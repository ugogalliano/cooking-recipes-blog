import { HeroSectionModel } from "@/models/HeroSection.model";
import Image from "next/image";
import { Button } from "../ui/button";

export default function HeroSection({
  buttonText,
  description,
  title,
  image,
}: Readonly<HeroSectionModel>) {
  return (
    <div className="relative w-full mt-12 ">
      {image && (
        <Image
          src={`${process.env.CMS_STRAPI_URL}${image.url}`}
          alt={image.alternativeText}
          width={image.width}
          height={image.height}
          className="mx-auto rounded-md"
        />
      )}

      <div className="absolute inset-0 flex flex-col items-center justify-center text-white bg-opacity-50">
        <h1
          className="text-4xl md:text-6xl font-bold text-center mb-4"
          aria-live="polite"
        >
          {title}
        </h1>

        <p className="text-xl md:text-2xl text-center mb-6 px-4 max-w-xl">
          {description}
        </p>

        <Button variant={"secondary"} size={"lg"}>
          {buttonText}
        </Button>
      </div>
    </div>
  );
}
