"use client";

import { FaHandsHelping } from "react-icons/fa";
import { fontMono } from "@/config/fonts";
import { Button } from "@nextui-org/button";
import { useState } from "react";
import useSound from "use-sound";
import Modal from "./components/modal";

export default function Home() {
  const [play] = useSound("/bg-music/first.mp3", {
    volume: 0.03,
    interrupt: true,
  });

  const handleClick = () => {
    play();
  };

  const [isModalOpen, showModal] = useState(false);

  return (
    <main className="">
      <div className={"pt-12"}>
        <div
          className={`text-center place-content-center text-5xl ${fontMono.className}`}
        >
          <h1>WELCOME TO MY PORTFOLIO!!</h1>
        </div>
        <div className={"text-center pt-12"}>
          <Button
            onClick={handleClick}
            href={"/my-experiencies"}
            className={
              "rounded-full bg-gradient-to-r from-foreground-500 to-cyan-500 text-2xl"
            }
          >
            <p
              className={"text-center place-content-center text-white text-xl"}
            >
              Start my Portfolio
            </p>
          </Button>
        </div>
      </div>
      <footer className="pt-12">
        <FaHandsHelping
          className={"text-end sticky text-lg"}
          onClick={() => showModal(true)}
        />
        <h5 className={"text-center sticky text-lg font-sans"}>
          Made with love ❤️
        </h5>
        {isModalOpen && (
          <Modal
            children={<></>}
            onClose={() => showModal(false)}
            title={"Thanks to the supported"}
          >
            Atributtion Royalty Free Music from Tunetank.com Track: Star Force
            by VictorWayne https://tunetank.com/track/5918-star-force/
          </Modal>
        )}
      </footer>
    </main>
  );
}
