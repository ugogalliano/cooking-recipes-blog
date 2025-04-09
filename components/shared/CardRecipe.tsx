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

interface RecipeCardProps {
  recipe: Recipe;
  className?: string;
}
export default function CardRecipe({
  recipe,
  className,
}: Readonly<RecipeCardProps>) {
  return (
    <Card className={cn("overflow-hidden w-full ", className)}>
      {/* Immagine sopra parziale */}
      <div className="relative h-55 w-full">
        <Image
          src={`${process.env.CMS_STRAPI_URL}${recipe.image.url}`}
          alt={recipe.title}
          fill
        />
      </div>

      {/* Header: Titolo */}
      <CardHeader>
        <CardTitle className="text-2xl font-bold text-start">
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
          <Button variant={"ghost"}> View Recipe</Button>
        </div>
      </CardFooter>
    </Card>
  );
}
