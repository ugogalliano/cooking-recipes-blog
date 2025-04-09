import { AuthInfo } from "@/models/User.model";
import axios from "axios";
import { cookies } from "next/headers";
import { decrypt } from "./auth";

const axiosInstance = axios.create({
  withCredentials: true,
  baseURL: process.env.CMS_API_STRAPI_URL,
  timeout: 1000,
  headers: {
    "Content-Type": "application/json",
  },
});

async function getCookieAuthorizationToken(): Promise<string> {
  const cookie = (await cookies()).get("session")?.value;
  let session: null | AuthInfo = null;
  if (cookie) session = await decrypt<AuthInfo>(cookie);

  if (session) {
    return session.jwt;
  }
  throw new Error("Unable to find Authorization cookie");
}

export { axiosInstance, getCookieAuthorizationToken };
