"use client";
import { Recipe } from "@/models/shared/Recipe";
import {
  Card,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "../ui/card";
import Image from "next/image";
import { cn } from "@/lib/utils";
import { Button } from "../ui/button";
import { useIsVisible } from "@/hook/useIsVisible.hook";
import { useCallback, useMemo, useRef } from "react";
import { useRouter } from "next/navigation";

interface RecipeCardProps {
  recipe: Recipe;
  className?: string;
}
export default function CardRecipe({
  recipe,
  className,
}: Readonly<RecipeCardProps>) {
  const cardRef = useRef<HTMLDivElement>(null);
  const isVisible = useIsVisible(cardRef);
  const router = useRouter();

  const isVisibleTab = useMemo(() => (isVisible ? 0 : -1), [isVisible]);

  const goToRecipe = useCallback(
    (id: string) => {
      router.push(`/recipe/${id}`);
    },
    [router]
  );

  return (
    <Card
      ref={cardRef}
      className={cn("overflow-hidden w-full border-0 gap-0 ", className)}
    >
      {/* Immagine sopra parziale */}
      <div className="relative h-55  w-full">
        <Image
          src={`${process.env.NEXT_PUBLIC_CMS_STRAPI_URL}${recipe.image.url}`}
          alt={recipe.title}
          fill
          sizes="auto"
        />
      </div>
      <div className="border-2  border-t-0 pt-5 pb-5 border-gray-300 rounded-b-2xl">
        {/* Header: Titolo */}
        <CardHeader>
          <CardTitle className="md:text-2xl  text-lg font-bold text-start">
            {recipe.title}
          </CardTitle>
          <CardDescription className=" text-start">
            {recipe.description}
          </CardDescription>
        </CardHeader>

        {/* Footer: info */}
        <CardFooter className="text-xs text-muted-foreground justify-between pt-8 mt-auto">
          <div className="flex justify-between w-full items-center">
            <div>
              <span className="font-semibold text-md uppercase">
                {recipe.time} min - {recipe.difficulty} - {recipe.serves}{" "}
              </span>
            </div>
            <Button
              variant={"ghost"}
              onClick={() => goToRecipe(recipe.documentId)}
              tabIndex={isVisibleTab}
            >
              View Recipe
            </Button>
          </div>
        </CardFooter>
      </div>
    </Card>
  );
}
