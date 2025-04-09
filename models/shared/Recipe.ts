import { Difficulty } from "./enum/Difficulty";
import { Image } from "./Image";

export interface Recipe {
  id: number;
  description: string;
  publishedAt: string;
  createdAt: string;
  updatedAt: string;
  documentId: string;
  title: string;
  serves: number;
  time: string;
  difficulty: Difficulty;
  image: Image;
}
