"use client";
import { Label } from "../ui/label";
import { Button } from "../ui/button";
import { useAppForm } from "../tanstack-form-setup/tanstack-form-setup";
import { authFormOptions } from "./shared-auth-form";
import { FormEvent, useCallback, useState } from "react";
import { login } from "@/actions/authActions";
import { redirect } from "next/navigation";

export default function AuthForm() {
  const [infoMessage, setInfoMessage] = useState("");

  const form = useAppForm({
    ...authFormOptions,
    onSubmit: async ({ value }) => {
      const result = await login(value);
      if (result.success) {
        setInfoMessage("Autenticato");
        redirect("/cooking-home");
      } else {
        setInfoMessage(result.message);
      }
    },
  });

  const handleSubmitForm = useCallback(
    (e: FormEvent<HTMLFormElement>) => {
      setInfoMessage("");
      e.preventDefault();
      e.stopPropagation();
      form.handleSubmit();
    },
    [form]
  );

  return (
    <form className="container mx-auto" onSubmit={handleSubmitForm}>
      <h1 className="text-4xl m-4 text-center">Sign In</h1>
      <div className="w-[50%] mx-auto flex shadow-2xl justify-center flex-col gap-5 bg-gray-50 rounded-md p-6 min-h-[400px]">
        <p className="text-center mb-3">Login in Cooking Delight App</p>

        <form.AppField name="username">
          {(field) => (
            <>
              <Label htmlFor={field.name}>Email:</Label>
              <field.Input />
            </>
          )}
        </form.AppField>

        <form.AppField name="password">
          {(field) => (
            <>
              <Label htmlFor={field.name}>Password:</Label>
              <field.Input />
            </>
          )}
        </form.AppField>

        {/* <AddressFields form={form} />
         */}

        <form.Subscribe
          selector={(state) => [state.canSubmit, state.isSubmitting]}
          children={([canSubmit, isSubmitting]) => (
            <Button type="submit" disabled={!canSubmit}>
              {isSubmitting ? "..." : "Submit"}
            </Button>
          )}
        />
        <h1>{infoMessage}</h1>
      </div>
    </form>
  );
}
