import { ExploreSectionModel } from "@/models/ExploreSection.model";
import Image from "next/image";

export default function ExploreSection({
  title,
  description,
  exploreItems,
}: ExploreSectionModel) {
  return (
    <section className="grid grid-cols-1 mt-10 md:grid-cols-2 p-8 gap-8 border-2 mx-auto max-w-[1250px] min-h-[400px] border-gray-400 rounded-lg">
      <div className="flex flex-col justify-end mb-5 space-y-4">
        <h2 className="text-5xl font-bold">{title}</h2>
        <p className="text-lg text-gray-600 mr-4">{description}</p>
      </div>
      <div className="flex flex-col justify-center gap-5">
        {exploreItems.map((item) => (
          <div
            key={item.id}
            className="flex items-center gap-3  justify-between border-b-2 border-gray-400 pb-4"
          >
            <Image
              src={`${process.env.CMS_STRAPI_URL}${item.iconImg.url}`}
              alt={item.iconImg.alternativeText}
              width={item.iconImg.width}
              height={item.iconImg.height}
            />
            <div>
              <p className="text-gray-600 font-semibold">{item.title}</p>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}
