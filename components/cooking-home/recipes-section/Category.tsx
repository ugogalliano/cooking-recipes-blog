"use client";
import { Button } from "@/components/ui/button";
import { Category as CategoryModel } from "@/models/shared/Category";
import { useSearchParams } from "next/navigation";

export default function Category({
  name,
  slug,
  isLoading,
}: Readonly<CategoryModel & { isLoading: boolean }>) {
  const searchParams = useSearchParams();

  const changeCategory = () => {
    const params = new URLSearchParams(searchParams.toString());
    if (slug) {
      params.set("search", slug);
    } else {
      params.delete("search");
    }

    const newUrl = `${window.location.pathname}?${params.toString()}`;
    window.history.pushState(null, "", newUrl);
  };

  return (
    <Button size={"lg"} disabled={isLoading} onClick={changeCategory}>
      {name}
    </Button>
  );
}
