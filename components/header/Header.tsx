import Image from "next/image";
import { Button } from "../ui/button";
import { navbarMenu } from "@/utils/constants";
import MenuItem from "./MenuItem";

export default function Header() {
  return (
    <header className="flex items-center justify-between m-4">
      <div>
        <Image src="/header/logo.png" width={50} height={45} alt="Logo" />
      </div>
      <nav role="navigation" aria-label="Menu principale">
        <ul className="flex space-x-4">
          {navbarMenu.map((item) => (
            <li key={item.label}>
              <MenuItem {...item} />
            </li>
          ))}
        </ul>
      </nav>

      <Button>Logout</Button>
    </header>
  );
}
