import { jwtVerify, SignJWT } from "jose";
import { cookies } from "next/headers";

const secretKey = "secret";
const key = new TextEncoder().encode(secretKey);

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export async function encrypt(payload: any, expires: number | string | Date) {
  return await new SignJWT(payload)
    .setProtectedHeader({ alg: "HS256" })
    .setIssuedAt()
    .setExpirationTime(expires)
    .sign(key);
}

export async function decrypt<T>(input: string): Promise<T | null> {
  const { payload } = await jwtVerify<T>(input, key, {
    algorithms: ["HS256"],
  });
  return payload;
}

export async function isAuthenticated<T>(): Promise<T | null> {
  const cookie = (await cookies()).get("session")?.value;
  if (!cookie) return null;

  try {
    const session = await decrypt<T>(cookie);
    if (session) return session;
    return null;
  } catch (error) {
    console.error("Error decrypting session:", error);
    return null;
  }
}
