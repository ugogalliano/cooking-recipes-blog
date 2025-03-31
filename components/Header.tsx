import Image from "next/image";

export default function Header() {
  const infoMessage = "Asite Product System";

  return (
    <header className="flex items-center justify-between m-4">
      <div>
        <Image src="/header/logo.png" width={50} height={45} alt="Logo" />
      </div>
      <div>{infoMessage}</div>
    </header>
  );
}
