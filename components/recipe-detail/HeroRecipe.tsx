import { Recipe } from "@/models/shared/Recipe";
import Image from "next/image";

export default function HeroRecipe({
  title,
  description,
  difficulty,
  serves,
  time,
  image,
}: Readonly<Recipe>) {
  return (
    <section className="flex justify-center flex-col items-center ">
      <div className="text-center mt-10 max-w-xl px-4">
        <h1
          className="text-4xl md:text-6xl font-bold text-center mb-4"
          aria-live="polite"
        >
          {title}
        </h1>
        <p className="text-xl md:text-2xl text-center mb-6 px-4 max-w-xl">
          {description}
        </p>
        <div className="flex items-center justify-center gap-20 mt-10">
          <div className="flex items-center justify-between gap-2">
            <Image src="/icons/Time.png" width={15} height={15} alt="Time" />
            <p>{time} MINUTES</p>
          </div>
          <div className="flex items-center justify-between gap-2">
            <Image
              src="/icons/Serves.png"
              width={15}
              height={15}
              alt="Serves"
            />
            <p>{serves} SERVES</p>
          </div>
          <div className="flex items-center justify-between gap-2">
            <Image
              src="/icons/Difficulty.png"
              width={15}
              height={15}
              alt="Difficulty"
            />
            <p>{difficulty.toUpperCase()}</p>
          </div>
        </div>
      </div>
      <Image
        src={`${process.env.NEXT_PUBLIC_CMS_STRAPI_URL}${image.url}`}
        alt={title}
        width={700}
        className="my-10 rounded-md"
        height={700}
      />
    </section>
  );
}
