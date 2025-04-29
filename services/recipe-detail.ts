import { axiosInstance } from "@/lib/axios";
import { Recipe } from "@/models/shared/Recipe";
import { StrapiApiResponse } from "@/models/shared/StrapiApiResponse.model";
import { cache } from "react";

const recipeDetailUrl = "recipes";

export const getRecipeDetail = cache(async (token: string, id: string) => {
  try {
    console.log("FETCH Recipe Detail");
    const {
      data: { data },
    } = await axiosInstance.get<StrapiApiResponse<Recipe>>(
      `${recipeDetailUrl}/${id}?populate=image`,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );
    return data;
  } catch (error) {
    console.error("[Recipe Detail] --- ", error);
    throw new Error(`${error}`);
  }
});
