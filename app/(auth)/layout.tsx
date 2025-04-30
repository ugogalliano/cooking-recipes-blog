import Header from "@/components/header/Header";

export default function Layout({
  children,
}: Readonly<React.PropsWithChildren>) {
  return (
    <div className="mx-2 md:mx-14">
      <Header />
      {children}
    </div>
  );
}
