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
