import { FeatureSectionModel } from "@/models/FeatureSection.model";
import { Recipe } from "@/models/shared/Recipe";
import {
  CarouselContent,
  CarouselRoot,
  CarouselSlide,
} from "../shared/Carousel";
import CardRecipe from "../shared/CardRecipe";

const splitRecipesInChunks = (recipes: Recipe[], chunkSize = 2): Recipe[][] => {
  const chunked: Recipe[][] = [];
  for (let i = 0; i < recipes.length; i += chunkSize) {
    chunked.push(recipes.slice(i, i + chunkSize));
  }
  return chunked;
};

export default function FeatureSection({
  title,
  recipes,
}: Readonly<FeatureSectionModel>) {
  const chunked = splitRecipesInChunks(recipes);

  return (
    <CarouselRoot title={title}>
      {chunked.map((group, index) => (
        <CarouselSlide key={index}>
          <CarouselContent className="grid grid-cols-2 gap-4 p-5">
            {group.map((recipe) => (
              <CardRecipe key={recipe.id} recipe={recipe} />
            ))}
          </CarouselContent>
        </CarouselSlide>
      ))}
    </CarouselRoot>
  );
}
