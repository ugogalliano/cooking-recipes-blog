import HeroSection from "@/components/cooking-home/HeroSection";
import {
  getExploreSection,
  getFeatureSection,
  getHeroSection,
} from "@/services/home";
import { getCookieAuthorizationToken } from "@/lib/axios";
import ExploreSection from "@/components/cooking-home/ExploreSection";
import FeatureSection from "@/components/cooking-home/FeatureSection";

export default async function CookingHome() {
  const token = await getCookieAuthorizationToken();

  const heroSection = await getHeroSection(token);

  const exploreSection = await getExploreSection(token);

  const featureSection = await getFeatureSection();

  return (
    <>
      <HeroSection {...heroSection} />

      <ExploreSection {...exploreSection} />

      <FeatureSection {...featureSection} />
    </>
  );
}
