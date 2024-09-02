import "@/styles/globals.css";

import { Providers } from "./providers";
import { siteConfig } from "@/config/site";
import { fontSans } from "@/config/fonts";
import { NextScript } from "next/document";

export const metadata = {
  title: {
    default: siteConfig.name,
    template: `%s - ${siteConfig.name}`,
  },
  icons: {
    icon: "/favicon.ico",
  },
};

export const viewport = {
  themeColor: [
    { media: "(prefers-color-scheme: light)", color: "white" },
    { media: "(prefers-color-scheme: dark)", color: "black" },
  ],
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html suppressHydrationWarning lang="en">
      <head />
      <body className={`min-h-screen antialiased ${fontSans.className}`}>
        <Providers
          themeProps={{
            attribute: "class",
            defaultTheme: "dark",
            children: children,
          }}
        >
          <div id="modal-root"></div>
          <div className="h-screen">{children}</div>
        </Providers>
      </body>
    </html>
  );
}
