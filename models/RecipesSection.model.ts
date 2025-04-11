import { Category } from "./shared/Category";

export interface RecipesSectionModel {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  createdAt?: string;
  updatedAt?: string;
  publishedAt?: string;
  categories: Category[];
}
