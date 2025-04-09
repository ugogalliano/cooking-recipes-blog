import { Icon } from "./shared/Icon";

export interface ExploreSectionModel {
  id: number;
  documentId: string;
  title: string;
  description: string;
  createdAt?: string;
  updatedAt?: string;
  publishedAt?: string;
  exploreItems: Icon[];
}
