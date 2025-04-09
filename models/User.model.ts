type Role = {
  id: number;
  name: string;
  description: string;
  type: string;
};

type User = {
  id: number;
  username: string;
  email: string;
  provider: string;
  confirmed: boolean;
  blocked: boolean;
  role: Role;
  created_at: string;
  updated_at: string;
};

export type AuthInfo = {
  jwt: string;
  user: User;
  iat: number;
  exp: number;
};
