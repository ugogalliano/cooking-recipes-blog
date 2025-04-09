export interface StrapiApiResponse<T> {
  data: T;
  meta?: Record<string, unknown>;
  error: ErrorStrapiApiResponse;
}

interface ErrorStrapiApiResponse {
  status: number;
  name: string;
  message: string;
  details: Record<string, unknown>;
}
