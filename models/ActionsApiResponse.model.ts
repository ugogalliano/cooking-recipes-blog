export interface ActionsApiResponse<T = null> {
  success: boolean;
  message: string;
  data?: T;
}
