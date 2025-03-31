import { AnyFieldApi } from "@tanstack/react-form";
import { useFieldContext } from "../tanstack-form-setup/tanstack-form-setup";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "../ui/table";
import { Button } from "../ui/button";
import { useState } from "react";
import { Dialog, DialogContent } from "../ui/dialog";

export interface HeaderCell {
  renderCell: () => React.ReactNode;
}

export interface RowCell<T> {
  renderCell: (index: number, item: T, field: AnyFieldApi) => React.ReactNode;
}

interface FormArrayTableProps<T> {
  headerTable: HeaderCell[];
  rowCells: RowCell<T>[];
  innerModalForm?: (index: number, isEdit?: boolean) => React.ReactNode;
  onCloseModalForm?: () => void;
}

export default function FormArrayTable<T>(
  props: Readonly<FormArrayTableProps<T>>
) {
  const field = useFieldContext<T[]>();
  const [isOpen, setIsOpen] = useState(false);
  const [index, setIndex] = useState(0);
  const [isEdit, setEdit] = useState(false);

  const handleNewItem = () => {
    setIndex(field.state.value.length);
    setIsOpen(true);
    setEdit(false);
  };

  const handleEditItem = (itemIndex: number) => {
    setIndex(itemIndex);
    setIsOpen(true);
    setEdit(true);
  };

  const onOpenChangeHandler = () => {
    if (props.onCloseModalForm) props.onCloseModalForm();
    setIsOpen(false);
  };

  return (
    <>
      <Button onClick={handleNewItem}>Create interest</Button>

      <Table>
        <TableHeader>
          <TableRow>
            {props.headerTable.map((header, index) => (
              <TableHead key={index}>{header.renderCell()}</TableHead>
            ))}
          </TableRow>
        </TableHeader>

        <TableBody>
          {field.state.value.map((item, index) => (
            <TableRow key={index}>
              {props.rowCells.map((cell, index) => (
                <TableCell key={index}>
                  {cell.renderCell(index, item, field)}
                </TableCell>
              ))}
              <TableCell>
                <Button onClick={() => handleEditItem(index)}>Edit</Button>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>

      <Dialog
        defaultOpen={isOpen}
        open={isOpen}
        onOpenChange={onOpenChangeHandler}
        modal
      >
        <DialogContent>
          {props.innerModalForm ? props.innerModalForm(index, isEdit) : null}
        </DialogContent>
      </Dialog>
    </>
  );
}
