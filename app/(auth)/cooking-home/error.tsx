"use client";
import Image from "next/image";

function ErrorPage() {
  return (
    <div className="h-full flex-col gap-2  flex justify-center items-center">
      <Image
        src="/error/error_generic.webp"
        className="rounded-md"
        width={600}
        height={600}
        alt="Si è verificato un error"
      />
    </div>
  );
}

export default ErrorPage;
