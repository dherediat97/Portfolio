import "@/styles/globals.css";
import clsx from "clsx";

import { Providers } from "./providers";

import { siteConfig } from "@/config/site";
import { fontSans } from "@/config/fonts";

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
const initParasol = (
  element: any,
  settings: {
    url?: string;
    ui?: any;
    graph?: any;
    networks?: any;
    layout?: any;
    network_loader?: any;
  }
) => {
  // const appState = new AppState();
  // appState.initSettings(settings);
  // render(
  //   <AppContainer>
  //     <App appState={appState} />
  //   </AppContainer>,
  //   element
  // );
  // if (module.hot) {
  //   module.hot.accept("./App", () => {
  //     const NextApp = require("./App").default;
  //     render(
  //       <AppContainer>
  //         <NextApp appState={appState} />
  //       </AppContainer>,
  //       element
  //     );
  //   });
  // }
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  // let settings = { url: "settings.json" };
  // const appState = new AppState();
  // appState.initSettings(settings);

  return (
    <html suppressHydrationWarning lang="en">
      <head />
      <body
        className={clsx(
          `min-h-screen font-sans antialiased ${fontSans.className}`
        )}
      >
        <Providers
          themeProps={{
            attribute: "class",
            defaultTheme: "dark",
            children: children,
          }}
        >
          <div className="relative flex flex-col h-screen">{children}</div>
        </Providers>
      </body>
    </html>
  );
}
