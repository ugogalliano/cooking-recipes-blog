import axios from "axios";

const axiosInstance = axios.create({
  withCredentials: true,
  baseURL: process.env.CMS_API_STRAPI_URL,
  timeout: 1000,
  headers: {
    "Content-Type": "application/json",
  },
});

const axiosInstanceClient = axios.create({
  withCredentials: true,
  baseURL: process.env.NEXT_PUBLIC_CMS_STRAPI_URL_API,
  timeout: 1000,
  headers: {
    "Content-Type": "application/json",
  },
});
export { axiosInstance, axiosInstanceClient };
