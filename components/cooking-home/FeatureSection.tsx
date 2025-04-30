"use client";
import { FeatureSectionModel } from "@/models/FeatureSection.model";
import { Recipe } from "@/models/shared/Recipe";
import {
  CarouselContent,
  CarouselRoot,
  CarouselSlide,
} from "../shared/Carousel";
import CardRecipe from "../shared/CardRecipe";
import { useBreakpoint } from "@/hook/useBreakpoint.hook";
import { useMemo } from "react";

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
  const isMobile = useBreakpoint("md");

  const chunked = useMemo(() => {
    if (recipes.length > 0) {
      const numberOfChunks = isMobile ? 1 : 2;
      return splitRecipesInChunks(recipes, numberOfChunks);
    }
    return [];
  }, [recipes, isMobile]);

  return (
    <CarouselRoot title={title}>
      {chunked.map((group, index) => (
        <CarouselSlide key={index}>
          <CarouselContent className="grid grid-cols-1 md:grid-cols-2 gap-10 p-5 mx-1 md:mx-20">
            {group.map((recipe) => (
              <CardRecipe key={recipe.id} recipe={recipe} />
            ))}
          </CarouselContent>
        </CarouselSlide>
      ))}
    </CarouselRoot>
  );
}
