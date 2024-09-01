"use client";

import { fontSans } from "@/config/fonts";
import { Button } from "@nextui-org/button";
import useSound from "use-sound";

export default function Home() {
  const [play] = useSound("portfolio/bg-music/first.mp3", {
    volume: 0.03,
    interrupt: true,
  });

  const handleClick = () => {
    play();
  };

  return (
    <main className="container mx-auto max-w-7xl px-6 flex-grow">
      <div
        className={"grid place-content-around place-items-center grid-flow-row"}
      >
        <div className={"text-4xl pt-6"}>
          <h1>WELCOME TO MY PORTFOLIO!!</h1>
        </div>
        <div className={"pt-6"}>
          <Button
            onClick={handleClick}
            href={"/my-experiencies"}
            className={
              "rounded-full bg-gradient-to-r  from-foreground-500 to-cyan-500 text-2xl"
            }
          >
            <p className={"font-sans font-medium text-xl"}>
              Start my Portfolio
            </p>
          </Button>
        </div>
      </div>
      <footer className="w-full flex items-center justify-center py-3">
        <h5 className={`text-lg ${fontSans.className}`}>Made with love ❤️</h5>
      </footer>
    </main>
  );
}
