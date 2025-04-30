"use client";
import Image from "next/image";
import { Button } from "../ui/button";
import { navbarMenu } from "@/utils/constants";
import MenuItem from "./MenuItem";
import { useState } from "react";

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);

  const toggleMenu = () => setIsOpen(!isOpen);

  return (
    <header className="mx-auto max-w-[1250px] flex items-center justify-between m-4 relative">
      <div className="lg:block hidden">
        <Image src="/header/logo.png" width={50} height={45} alt="Logo" />
      </div>

      <Button
        className="lg:hidden flex items-center justify-center p-2"
        onClick={toggleMenu}
        aria-label="Toggle menu"
      >
        <div className="flex flex-col justify-center items-center">
          <span className="block w-6 h-0.5 bg-white"></span>
          <span className="block w-6 h-0.5 bg-white mt-1"></span>
        </div>
      </Button>

      {/* Menu Desktop */}
      <nav
        className="hidden lg:block"
        role="navigation"
        aria-label="Menu principale"
      >
        <ul className="flex space-x-4">
          {navbarMenu.map((item) => (
            <li key={item.label}>
              <MenuItem {...item} />
            </li>
          ))}
        </ul>
      </nav>

      {/* Menu Mobile */}
      <div
        className={`fixed inset-0 bg-white z-50 transform ${
          isOpen ? "translate-x-0" : "-translate-x-full"
        } transition-transform duration-400 ease-in-out`}
      >
        <div className="flex justify-end p-4">
          <button onClick={toggleMenu} aria-label="Close menu">
            <span className="block w-6 h-0.5 bg-black"></span>
            <span className="block w-6 h-0.5 bg-black mt-1"></span>
          </button>
        </div>
        <nav role="navigation" aria-label="Mobile Menu">
          <ul className="flex flex-col items-center space-y-4 p-4">
            {navbarMenu.map((item) => (
              <li key={item.label}>
                <MenuItem {...item} />
              </li>
            ))}
          </ul>
        </nav>
      </div>

      <Button>Logout</Button>
    </header>
  );
}
