import AuthForm from "@/components/auth/AuthForm";
import Image from "next/image";

export default function Home() {
  return (
    <div className="grid grid-cols-2 h-full  ">
      <div className=" h-full flex justify-center items-center">
        <Image
          src="/auth/auth_image.png"
          width={600}
          height={600}
          alt="Immagine autenticazione"
        />
      </div>
      <div className="h-full flex justify-center items-center">
        <AuthForm />
      </div>
    </div>
  );
}
