import { NextRequest, NextResponse } from "next/server";
import { cookies } from "next/headers";
import { User } from "./models/User.model";
import { decrypt } from "./lib/auth";

const protectedRoutes = ["/cooking-home"];

export default async function middleware(req: NextRequest) {
  const path = req.nextUrl.pathname;
  const isProtectedRoute = protectedRoutes.includes(path);
  const cookie = (await cookies()).get("session")?.value;

  if (!isProtectedRoute || !cookie) return NextResponse.next();

  if (!cookie) return NextResponse.redirect(new URL("/", req.nextUrl));

  const session = await decrypt<User>(cookie);

  if (isProtectedRoute && !session.id) {
    return NextResponse.redirect(new URL("/", req.nextUrl));
  }

  return NextResponse.next();
}

export const config = {
  matcher: ["/((?!api|_next/static|_next/image|.*\\.png$).*)"],
};
