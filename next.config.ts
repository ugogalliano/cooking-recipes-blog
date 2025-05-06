import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    domains: ["localhost", "strapi_prod"],
  },
};

export default nextConfig;
