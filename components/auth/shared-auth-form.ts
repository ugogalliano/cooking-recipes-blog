import { formOptions } from "@tanstack/react-form";
import { z } from "zod";

export interface Interest {
  name: string;
}

export const UserSchema = z.object({
  username: z.string().min(3, "Username must be at least 3 characters"),
  password: z.string().min(3, "Password must be at least 3 characters"),
});

export type User = z.infer<typeof UserSchema>;

export const authFormOptions = formOptions({
  defaultValues: {
    username: "",
    password: "",
  },
  validators: {
    onChange: UserSchema,
  },
});
