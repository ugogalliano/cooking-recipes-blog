import { axiosInstance } from "@/lib/axios";

export function fetchAllProducts() {
  return axiosInstance.get("/recipes");
}
