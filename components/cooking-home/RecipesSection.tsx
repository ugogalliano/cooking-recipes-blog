import { RecipesSectionModel } from "@/models/RecipesSection.model";
import CardRecipeSection from "./recipes-section/CardRecipeSection";
import { getCookieAuthorizationToken } from "@/lib/auth";
export default async function RecipesSection({
  title,
  subtitle,
  categories,
}: Readonly<RecipesSectionModel>) {
  const token = await getCookieAuthorizationToken();

  return (
    <section className="mt-10 p-8  border-2 mx-auto max-w-[1250px] min-h-[400px] border-gray-400 rounded-lg">
      <div className="text-center mx-auto max-w-md  mb-5 space-y-4 px-4 py-6">
        <h2 className="text-5xl font-bold ">{title}</h2>
        <p className="text-lg text-gray-600 ">{subtitle}</p>
      </div>

      {/** Categories && Recipes **/}
      <CardRecipeSection token={token} categories={categories} />
    </section>
  );
}
