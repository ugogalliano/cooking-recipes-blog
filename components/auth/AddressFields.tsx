import { Interest, authFormOptions } from "./shared-auth-form";
import { Label } from "../ui/label";
import {
  useModalContext,
  withForm,
} from "../tanstack-form-setup/tanstack-form-setup";
import { RowCell } from "../forms/FormArrayTable";
import { useMemo } from "react";
import { Button } from "../ui/button";

export const AddressFields = withForm({
  ...authFormOptions,
  render: function Render({ form }) {
    const formInterest = useModalContext({
      defaultValues: {
        ...form.state.values,
      },
      onSubmitMeta: {} as { index: number },

      onSubmit: ({ value, meta }) => {
        console.log(value);
        console.log(meta);

        const isEdit = meta.index >= 0;
        const interest = isEdit
          ? value.interests[meta.index]
          : value.interests[value.interests.length - 1];

        if (isEdit) {
          console.log("REPLACE");
          form.replaceFieldValue("interests", meta.index, interest);
        } else {
          console.log("PUSH");
          form.pushFieldValue("interests", interest);
        }
      },
    });

    const addressFieldsHeader = useMemo(
      () => [
        {
          renderCell: () => "Interest Name",
        },
        {
          renderCell: () => "Actions",
        },
      ],
      []
    );

    const rowFieldsInterest: RowCell<Interest>[] = [
      {
        renderCell: (_index, item) => <> {item.name} </>,
      },
    ];

    const renderInnerForm = (index: number, isEdit?: boolean) => (
      <form
        onSubmit={(e) => {
          e.preventDefault();
          e.stopPropagation();
          if (isEdit) {
            formInterest.handleSubmit({
              index,
            });
          } else {
            formInterest.handleSubmit();
          }
        }}
      >
        <formInterest.AppField name="interests" mode="array">
          {(field) => (
            <formInterest.AppField
              key={index}
              name={`interests[${index}].name`}
            >
              {(subfield) => (
                <>
                  <Label htmlFor={field.name}>Interesse:</Label>
                  <field.Input subfield={subfield} />
                </>
              )}
            </formInterest.AppField>
          )}
        </formInterest.AppField>
        <formInterest.Subscribe
          selector={(state) => [state.canSubmit, state.isSubmitting]}
          children={([canSubmit, isSubmitting]) => (
            <Button type="submit" disabled={!canSubmit}>
              {isSubmitting ? "..." : "Submit"}
            </Button>
          )}
        />
      </form>
    );

    return (
      <form.AppField name="interests" mode="array">
        {(field) => (
          <>
            <Label htmlFor={field.name}>Interest:</Label>
            <field.FormArrayTable<Interest>
              headerTable={addressFieldsHeader}
              rowCells={rowFieldsInterest}
              innerModalForm={renderInnerForm}
              onCloseModalForm={formInterest.reset}
            />
          </>
        )}
      </form.AppField>
    );
  },
});
