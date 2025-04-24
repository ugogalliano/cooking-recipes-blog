import HeroSection from "@/components/cooking-home/HeroSection";
import {
  getExploreSection,
  getFeatureSection,
  getHeroSection,
  getRecipesSection,
} from "@/services/home";
import { getCookieAuthorizationToken } from "@/lib/auth";
import ExploreSection from "@/components/cooking-home/ExploreSection";
import FeatureSection from "@/components/cooking-home/FeatureSection";
import RecipesSection from "@/components/cooking-home/RecipesSection";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "Cooking Home",
  description:
    "Welcome to Cooking Home, your ultimate destination for delicious recipes, cooking tips," +
    " and everything you need to create amazing meals at home. Explore a wide variety of dishes," +
    "from everyday meals to special occasion recipes, and become a home cooking expert.",
};

export default async function CookingHome() {
  const token = await getCookieAuthorizationToken();

  const heroSection = await getHeroSection(token);

  const exploreSection = await getExploreSection(token);

  const featureSection = await getFeatureSection();

  const recipesSection = await getRecipesSection(token);

  return (
    <>
      <HeroSection {...heroSection} />

      <ExploreSection {...exploreSection} />

      <FeatureSection {...featureSection} />

      <RecipesSection {...recipesSection} />
    </>
  );
}
