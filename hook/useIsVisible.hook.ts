import { useState, useEffect, RefObject } from "react";

export function useIsVisible<T extends HTMLElement>(
  ref: RefObject<T | null>
): boolean {
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    const currentRef = ref?.current;

    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) =>
          entry.isIntersecting ? setIsVisible(true) : setIsVisible(false)
        );
      },
      {
        threshold: 0.1,
      }
    );

    if (currentRef) {
      observer.observe(currentRef);
    }

    return () => {
      if (currentRef) {
        observer.unobserve(currentRef);
      }
    };
  }, [ref]);

  return isVisible;
}
