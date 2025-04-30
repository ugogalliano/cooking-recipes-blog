import { Recipe } from "@/models/shared/Recipe";
import ReactMarkdown, { Components } from "react-markdown";

const BLOG_RECIPE_MARKDOWN = {
  h2: ({ children, ...props }) => (
    <h3 className="text-xl mt-5 mb-2  uppercase font-bold" {...props}>
      {children}
    </h3>
  ),
  h3: ({ children, ...props }) => (
    <h3
      className="text-lg mb-2 mt-3 text-orange-500 uppercase font-semibold"
      {...props}
    >
      {children}
    </h3>
  ),
  ul: ({ children }) => <ul className="list-disc ml-6">{children}</ul>,
  li: ({ children }) => <li className="mb-1">{children}</li>,
} as Components;

export default function BlogRecipe({
  equipmentForPreparation,
  ingredients,
  nutrionValue,
  details,
}: Readonly<Recipe>) {
  return (
    <div className="flex mt-10 ">
      <div className="flex-1/2 ml-10">
        <ReactMarkdown components={BLOG_RECIPE_MARKDOWN}>
          {details ?? ""}
        </ReactMarkdown>
      </div>
      <div className="flex-1/2  flex flex-col items-end gap-10 mr-10">
        {ingredients && (
          <div className="bg-amber-50 w-96 p-5 rounded-md">
            <ReactMarkdown components={BLOG_RECIPE_MARKDOWN}>
              {ingredients}
            </ReactMarkdown>
          </div>
        )}
        {equipmentForPreparation && (
          <div className="bg-amber-50 w-96 p-5 rounded-md">
            <ReactMarkdown components={BLOG_RECIPE_MARKDOWN}>
              {equipmentForPreparation}
            </ReactMarkdown>
          </div>
        )}

        {nutrionValue && (
          <div className="bg-amber-50 w-96 p-5 rounded-md">
            <ReactMarkdown components={BLOG_RECIPE_MARKDOWN}>
              {nutrionValue}
            </ReactMarkdown>
          </div>
        )}
      </div>
    </div>
  );
}
