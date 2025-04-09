import { axiosInstance } from "@/lib/axios";
import { ExploreSectionModel } from "@/models/ExploreSection.model";
import { HeroSectionModel } from "@/models/HeroSection.model";
import { StrapiApiResponse } from "@/models/shared/StrapiApiResponse.model";
import { FeatureSectionModel } from "@/models/FeatureSection.model";
import { cache } from "react";
import { unstable_cache } from "next/cache";

const heroSectionUrl = "hero-section?populate=image";

const exploreSectionUrl =
  "explore-section?populate[0]=exploreItems&populate[1]=exploreItems.iconImg";

const featureSectionUrl =
  "feature-section?populate[0]=recipes&populate[1]=recipes.image";

export const getHeroSection = cache(async (token: string) => {
  try {
    const {
      data: { data },
    } = await axiosInstance.get<StrapiApiResponse<HeroSectionModel>>(
      heroSectionUrl,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );
    console.log(data);
    return data;
  } catch (error) {
    console.error("[Hero Section] --- ", error);
    throw new Error(`${error}`);
  }
});

export const getExploreSection = async (token: string) => {
  try {
    const {
      data: { data },
    } = await axiosInstance.get<StrapiApiResponse<ExploreSectionModel>>(
      exploreSectionUrl,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );
    return data;
  } catch (error) {
    console.error("[Explore Section] --- ", error);
    throw new Error(`${error}`);
  }
};

export const getFeatureSection = unstable_cache(
  async () => {
    try {
      const {
        data: { data },
      } = await axiosInstance.get<StrapiApiResponse<FeatureSectionModel>>(
        featureSectionUrl
      );
      return data;
    } catch (error) {
      console.error("[Feature Section] --- ", error);
      throw new Error(`${error}`);
    }
  },
  ["feature-section"],
  {
    revalidate: 60 * 5,
  }
);
