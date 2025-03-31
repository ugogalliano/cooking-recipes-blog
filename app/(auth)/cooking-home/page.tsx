import { fetchAllProducts } from "@/services/products";

export default async function CookingHome() {
  const response = await fetchAllProducts();

  console.log(response.data);
  return <>Autenticato</>;
}
