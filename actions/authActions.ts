"use server";

import { UserSchema, User } from "@/components/auth/shared-auth-form";
import { axiosInstance } from "../lib/axios";
import { User as UserModel } from "@/models/User.model";
import { encrypt } from "@/lib/auth";
import { cookies } from "next/headers";
import { ActionsApiResponse } from "@/models/ActionsApiResponse.model";

export async function login(
  formData: User
): Promise<ActionsApiResponse<UserModel>> {
  const validatedFields = UserSchema.safeParse(formData);
  const actionsResponse: ActionsApiResponse<UserModel> = {
    success: true,
    message: "",
  };

  if (!validatedFields.success) {
    actionsResponse.success = false;
    actionsResponse.message = "Validation failed!";
    return actionsResponse;
  }

  try {
    const response = await axiosInstance.post<UserModel>("/auth/login", {
      ...formData,
      expiresInMins: 30,
    });
    const user = response.data;

    const expires = new Date();
    expires.setMinutes(expires.getMinutes() + 30);

    const session = await encrypt(user, expires);

    (await cookies()).set("session", session, { expires });

    actionsResponse.success = true;
    actionsResponse.message = "Success";
    actionsResponse.data = user;

    return actionsResponse;
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
  } catch (error) {
    actionsResponse.success = false;
    actionsResponse.message = "An unexpected error occurred.";
    return actionsResponse;
  }
}
