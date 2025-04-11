export interface StrapiApiResponse<T> {
  data: T;
  meta?: Record<string, unknown>;
  error: ErrorStrapiApiResponse;
}

export interface StrapiApiResponseCollection<T> {
  data: T[];
  meta?: StrapiPaginationMeta;
  error: ErrorStrapiApiResponse;
}

interface StrapiPaginationMeta {
  pagination: {
    page: number;
    pageSize: number;
    pageCount: number;
    total: number;
  };
}

interface ErrorStrapiApiResponse {
  status: number;
  name: string;
  message: string;
  details: Record<string, unknown>;
}
