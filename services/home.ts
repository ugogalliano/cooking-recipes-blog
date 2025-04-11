import { axiosInstance, axiosInstanceClient } from "@/lib/axios";
import { ExploreSectionModel } from "@/models/ExploreSection.model";
import { HeroSectionModel } from "@/models/HeroSection.model";
import {
  StrapiApiResponse,
  StrapiApiResponseCollection,
} from "@/models/shared/StrapiApiResponse.model";
import { FeatureSectionModel } from "@/models/FeatureSection.model";
import { RecipesSectionModel } from "@/models/RecipesSection.model";
import { cache } from "react";
import { unstable_cache } from "next/cache";
import { Recipe } from "@/models/shared/Recipe";

const heroSectionUrl = "hero-section?populate=image";

const exploreSectionUrl =
  "explore-section?populate[0]=exploreItems&populate[1]=exploreItems.iconImg";

const featureSectionUrl =
  "feature-section?populate[0]=recipes&populate[1]=recipes.image";

const recipesSection = "recipes-section?populate=categories";

const filterRecipesByCategory =
  "recipes?populate[0]=category&populate[1]=image";

export const getHeroSection = cache(async (token: string) => {
  try {
    console.log("FETCH HERO SECTION");
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
    return data;
  } catch (error) {
    console.error("[Hero Section] --- ", error);
    throw new Error(`${error}`);
  }
});

export const getExploreSection = async (token: string) => {
  try {
    console.log("FETCH EXPLORE SECTION");

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
      console.log("FETCH FEATURE SECTION");

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

export const getRecipesSection = unstable_cache(
  async (token) => {
    try {
      console.log("FETCH RECIPES SECTION");

      const {
        data: { data },
      } = await axiosInstance.get<StrapiApiResponse<RecipesSectionModel>>(
        recipesSection,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        }
      );
      return data;
    } catch (error) {
      console.error("[Recipes Section] --- ", error);
      throw new Error(`${error}`);
    }
  },
  ["recipes-section"],
  {
    revalidate: 60 * 5,
  }
);

export const getRecipesByCategory = async (
  token: string,
  category: string | null
) => {
  try {
    console.log("FETCH RECIPES CATEGORY");

    let filterCategory = "";
    if (category) {
      filterCategory = "&filters[category][slug][$eq]=";
    }

    const { data } = await axiosInstanceClient.get<
      StrapiApiResponseCollection<Recipe>
    >(`${filterRecipesByCategory}${filterCategory}${category}`, {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    });
    console.log(data);
    return data;
  } catch (error) {
    console.error("[Recipes Category] --- ", error);
    throw new Error(`${error}`);
  }
};
