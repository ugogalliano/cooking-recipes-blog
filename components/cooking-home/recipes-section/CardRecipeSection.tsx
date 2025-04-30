"use client";

import Loading from "@/components/shared/Loading";
import { getRecipesByCategory } from "@/services/home";
import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "next/navigation";
import Category from "./Category";
import { Category as CategoryModel } from "@/models/shared/Category";
import CardRecipe from "@/components/shared/CardRecipe";

export default function CardRecipeSection({
  token,
  categories,
}: Readonly<{ token: string; categories: CategoryModel[] }>) {
  const searchParams = useSearchParams().get("search");

  const searchString = searchParams ? searchParams.toString() : "";

  const { data: paginationRecipes, isLoading } = useQuery({
    queryKey: ["recipes", token, searchString],
    queryFn: () => getRecipesByCategory(token, searchString),
    enabled: !!token,
    staleTime: 0,
  });

  return (
    <>
      <div className="flex justify-center ">
        <ul className="grid md:grid-cols-6 grid-cols-2 gap-10">
          {categories.map((category) => (
            <li className="mx-auto" key={category.id}>
              <Category {...category} isLoading={isLoading} />
            </li>
          ))}
        </ul>
      </div>

      {isLoading && (
        <div className="my-10">
          <Loading />
        </div>
      )}

      <div className=" mt-5 mx-2 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 p-4">
        {paginationRecipes?.data.map((recipe) => (
          <CardRecipe
            className="max-h-[450px]"
            recipe={recipe}
            key={recipe.id}
          />
        ))}
      </div>
    </>
  );
}
