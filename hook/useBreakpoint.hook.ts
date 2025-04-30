import { useCallback, useEffect, useMemo, useState } from "react";

enum Breakpoint {
  sm = 640,
  md = 768,
  lg = 1024,
  xl = 1280,
  _2xl = 1536,
}

export const useBreakpoint = (breakpoint: keyof typeof Breakpoint): boolean => {
  const target = useMemo(() => Breakpoint[breakpoint], [breakpoint]);

  const checkInitialState = useMemo(
    () => (typeof window !== "undefined" ? window.innerWidth < target : false),
    [target]
  );

  const [isBelow, setIsBelow] = useState(() => checkInitialState);

  const handleResize = useCallback(() => {
    setIsBelow(window.innerWidth < target);
  }, [target]);

  useEffect(() => {
    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, [target, handleResize]);

  return isBelow;
};
