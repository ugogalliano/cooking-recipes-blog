import Header from "@/components/header/Header";

export default function Layout({
  children,
}: Readonly<React.PropsWithChildren>) {
  return (
    <div className=" mx-14">
      <Header />
      {children}
    </div>
  );
}
