import { Indie_Flower as FontMono, Open_Sans as FontSans } from "next/font/google";

export const fontSans = FontSans({
  style: ['normal', 'italic'],
  subsets: ['latin'],
});

export const fontMono = FontMono({
  style: ['normal'],
  subsets: ['latin'],
  weight: "400"
});
