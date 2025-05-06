"use server";

import { UserSchema, UserForm } from "@/components/auth/shared-auth-form";
import { axiosInstance } from "../lib/axios";
import { AuthInfo } from "@/models/User.model";
import { encrypt } from "@/lib/auth";
import { cookies } from "next/headers";
import { ActionsApiResponse } from "@/models/ActionsApiResponse.model";

export async function login(
  formData: UserForm
): Promise<ActionsApiResponse<AuthInfo>> {
  const validatedFields = UserSchema.safeParse(formData);
  const actionsResponse: ActionsApiResponse<AuthInfo> = {
    success: true,
    message: "",
  };

  if (!validatedFields.success) {
    actionsResponse.success = false;
    actionsResponse.message = "Validation failed!";
    return actionsResponse;
  }

  try {
    const response = await axiosInstance.post<AuthInfo>("/auth/local", {
      ...formData,
    });
    const user = response.data;

    const expires = new Date();

    // Aggiungi 29 giorni
    expires.setDate(expires.getDate() + 29);

    // Aggiungi 23 ore
    expires.setHours(expires.getHours() + 23);

    const session = await encrypt(user, expires);

    (await cookies()).set("session", session, { expires });

    actionsResponse.success = true;
    actionsResponse.message = "Success";
    actionsResponse.data = user;

    return actionsResponse;
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
  } catch (error) {
    console.log(error);
    actionsResponse.success = false;
    actionsResponse.message = "An unexpected error occurred.";
    return actionsResponse;
  }
}
