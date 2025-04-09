import { Image } from "./shared/Image";

export interface HeroSectionModel {
  id: number;
  documentId: string;
  title: string;
  description: string;
  buttonText: string;
  image?: Image;
  createdAt?: string;
  updatedAt?: string;
  publishedAt?: string;
}
