import { createFormHook, createFormHookContexts } from "@tanstack/react-form";
import { Input } from "../ui/input";
import FormArrayTable from "../forms/FormArrayTable";
import ModalArrayTable from "../forms/ModalArrayTable";

export const { fieldContext, formContext, useFieldContext } =
  createFormHookContexts();

export const {
  fieldContext: modalFieldContext,
  formContext: modalFormContext,
} = createFormHookContexts();

export const { useAppForm, withForm } = createFormHook({
  fieldContext,
  formContext,
  fieldComponents: {
    Input,
    FormArrayTable,
    ModalArrayTable,
  },
  formComponents: {},
});

export const { useAppForm: useModalContext } = createFormHook({
  fieldContext: modalFieldContext,
  formContext: modalFormContext,
  fieldComponents: {
    Input,
    FormArrayTable,
    ModalArrayTable,
  },
  formComponents: {},
});
