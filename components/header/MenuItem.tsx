"use client";
import { MenuItem as MenuItemType } from "@/models/MenuItem";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useMemo } from "react";

export default function MenuItem({ label, path }: Readonly<MenuItemType>) {
  const pathname = usePathname();
  const isActive = useMemo(() => pathname.includes(path), [pathname, path]);

  const isActiveClassName = isActive
    ? "text-black after:w-full"
    : "text-gray-500 hover:text-black after:w-0 hover:after:w-full";

  return (
    <div className="relative">
      <Link
        aria-label={label}
        href={path}
        className={`px-3 py-2 rounded-md relative focus:outline-none focus:ring-2 focus:ring-secondary
            focus:after:h-[0px] after:absolute after:left-0 after:-bottom-1 after:h-[3px] after:bg-secondary after:transition-all after:duration-300
            ${isActiveClassName}`}
      >
        {label}
      </Link>
      {isActive && <span className="hidden">Current Page: {label} </span>}
    </div>
  );
}
