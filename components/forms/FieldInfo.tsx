import { AnyFieldApi } from "@tanstack/react-form";

function FieldInfo({ field }: Readonly<{ field: AnyFieldApi }>) {
  console.log(field.state.meta.errors);

  const messages =
    field.state.meta.errors.length &&
    (field.state.meta.errors.map((error) => error.message) as string[]);

  return (
    <>
      {field.state.meta.isTouched &&
      field.state.meta.errors.length &&
      messages ? (
        <em className="text-red-500">{messages.join(", ")}</em>
      ) : null}
      {field.state.meta.isValidating ? "Validating..." : null}
    </>
  );
}

export default FieldInfo;
