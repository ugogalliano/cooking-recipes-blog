import BlogRecipe from "@/components/recipe-detail/BlogRecipe";
import HeroRecipe from "@/components/recipe-detail/HeroRecipe";
import { getCookieAuthorizationToken } from "@/lib/auth";
import { getRecipeDetail } from "@/services/recipe-detail";

export default async function RecipeDetail({
  params,
}: Readonly<{
  params: Promise<{ id: string }>;
}>) {
  const { id } = await params;
  const token = await getCookieAuthorizationToken();
  const recipe = await getRecipeDetail(token, id);

  console.log(recipe);
  return (
    <>
      <HeroRecipe {...recipe} />
      <BlogRecipe {...recipe} />
    </>
  );
}
