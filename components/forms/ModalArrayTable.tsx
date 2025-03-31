import { useState } from "react";
import { Button } from "../ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogTitle,
  DialogTrigger,
} from "../ui/dialog";
import {
  useAppForm,
  useFieldContext,
} from "../tanstack-form-setup/tanstack-form-setup";

interface ModalArrayTableProps {
  children: React.ReactNode;
}

export default function ModalArrayTable(props: ModalArrayTableProps) {
  const [isOpen, setIsOpen] = useState(false);
  const form = useAppForm({
    onSubmit() {
      console.log("submit modal");
    },
  });

  return (
    <Dialog defaultOpen={isOpen} open={isOpen} modal>
      <DialogTrigger asChild>
        <Button onClick={() => setIsOpen(true)}>Create interest</Button>
      </DialogTrigger>

      <DialogContent>
        <DialogTitle>Modal Title</DialogTitle>
        <DialogDescription>
          This is an example modal built using ShadCN UI components.
        </DialogDescription>
        <form
          onSubmit={(e) => {
            e.preventDefault();
            e.stopPropagation();
            form.handleSubmit();
          }}
        >
          test
          <div className="mt-4 flex justify-end space-x-2">
            <Button variant="secondary" type="submit">
              Cancel
            </Button>
            <Button onClick={() => console.log("Save action executed")}>
              Save
            </Button>
          </div>
        </form>
      </DialogContent>
    </Dialog>
  );
}
