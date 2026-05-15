let kakaoLoaderPromise: Promise<void> | null = null;

export function loadKakaoMaps(appKey: string): Promise<void> {
  if (window.kakao?.maps?.Map) {
    return Promise.resolve();
  }

  if (kakaoLoaderPromise) {
    return kakaoLoaderPromise;
  }

  kakaoLoaderPromise = new Promise((resolve, reject) => {
    const existingScript = document.getElementById("kakao-map-sdk") as HTMLScriptElement | null;

    const loadMaps = () => {
      if (!window.kakao?.maps?.load) {
        reject(new Error("Kakao Maps SDK did not expose window.kakao.maps.load"));
        return;
      }

      window.kakao.maps.load(resolve);
    };

    if (existingScript) {
      existingScript.addEventListener("load", loadMaps, { once: true });
      existingScript.addEventListener("error", () => reject(new Error("Failed to load Kakao Maps SDK")), {
        once: true
      });
      return;
    }

    const script = document.createElement("script");
    script.id = "kakao-map-sdk";
    script.async = true;
    script.src = `https://dapi.kakao.com/v2/maps/sdk.js?appkey=${encodeURIComponent(appKey)}&autoload=false`;
    script.addEventListener("load", loadMaps, { once: true });
    script.addEventListener("error", () => reject(new Error("Failed to load Kakao Maps SDK")), { once: true });
    document.head.appendChild(script);
  });

  return kakaoLoaderPromise;
}
