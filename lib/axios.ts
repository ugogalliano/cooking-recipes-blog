import { User } from "@/models/User.model";
import axios from "axios";
import { cookies } from "next/headers";
import { decrypt } from "./auth";

const axiosInstance = axios.create({
  withCredentials: true,
  baseURL: "https://dummyjson.com/",
  timeout: 1000,
  headers: {
    "Content-Type": "application/json",
  },
});

/**
 * This interceptors add
 * the accessToken to the header
 */
axiosInstance.interceptors.request.use(async (config) => {
  const cookie = (await cookies()).get("session")?.value;
  let session: null | User = null;
  if (cookie) session = await decrypt<User>(cookie);

  if (session) {
    config.headers["Authorization"] = `Bearer ${session.accessToken}`;
  }
  return config;
});
export { axiosInstance };
