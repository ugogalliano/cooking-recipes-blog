"use client";
import { cn } from "@/lib/utils";
import React, {
  ReactNode,
  useState,
  Children,
  useEffect,
  useRef,
  useCallback,
} from "react";
import { Button } from "../ui/button";

interface CarouselRootProps {
  children: ReactNode;
  title: string;
}

function CarouselRoot({ children, title }: Readonly<CarouselRootProps>) {
  const slides = Children.toArray(children);
  const prevButtonRef = useRef<HTMLButtonElement>(null);
  const nextButtonRef = useRef<HTMLButtonElement>(null);

  const [current, setCurrent] = useState(0);

  const next = useCallback(
    () => setCurrent((prev) => (prev + 1) % slides.length),
    [slides.length]
  );

  const prev = useCallback(
    () => setCurrent((prev) => (prev - 1 + slides.length) % slides.length),
    [slides.length]
  );

  /** Accessibility for Keyboard **/
  useEffect(() => {
    const handleKey = (e: KeyboardEvent) => {
      if (
        document.activeElement === prevButtonRef.current ||
        document.activeElement === nextButtonRef.current
      ) {
        if (e.key === "ArrowRight" && slides.length - 1 !== current) {
          nextButtonRef.current?.focus();
          next();
        }
        if (e.key === "ArrowLeft" && current !== 0) {
          prevButtonRef.current?.focus();
          prev();
        }
      }
    };
    window.addEventListener("keydown", handleKey);
    return () => window.removeEventListener("keydown", handleKey);
  }, [next, prev, current, slides.length]);

  return (
    <section
      className="relative w-full max-w-[1250px] mx-auto overflow-hidden border-2 my-10 border-gray-400 rounded-lg"
      aria-label="Carosello delle sezioni"
      aria-roledescription="carousel"
    >
      <div className="flex justify-between items-center">
        <h2
          className={"md:text-5xl text-2xl font-bold p-4 w-full text-gray-800"}
        >
          {title}
        </h2>

        <div className=" flex items-center gap-2 mr-4">
          <Button
            variant={"ghost"}
            ref={prevButtonRef}
            onClick={prev}
            disabled={current === 0}
          >
            {"<"}
          </Button>
          <Button
            variant={"ghost"}
            ref={nextButtonRef}
            onClick={next}
            disabled={slides.length - 1 === current}
          >
            {">"}
          </Button>
        </div>
      </div>
      <div
        className="flex  transition-transform duration-500 ease-in-out "
        style={{ transform: `translateX(-${current * 100}%)` }}
      >
        {slides.map((slide, i) => (
          <section
            key={i}
            aria-label={`Slide ${i + 1} di ${slides.length}`}
            aria-hidden={current !== i}
            className="w-full flex-shrink-0"
          >
            {slide}
          </section>
        ))}
      </div>
    </section>
  );
}

function CarouselSlide({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      className={cn(" h-[450px] w-full  gap-4 text-center mb-5", className)}
      {...props}
    >
      {props.children}
    </div>
  );
}

function CarouselContent({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div className={cn("text-lg text-gray-700", className)} {...props}>
      {props.children}
    </div>
  );
}

export { CarouselRoot, CarouselContent, CarouselSlide };
