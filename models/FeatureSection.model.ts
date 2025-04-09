import { Recipe } from "./shared/Recipe";

export interface FeatureSectionModel {
  id: number;
  documentId: string;
  title: string;
  createdAt?: string;
  updatedAt?: string;
  publishedAt?: string;
  recipes: Recipe[];
}
