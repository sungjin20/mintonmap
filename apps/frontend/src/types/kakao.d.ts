export {};

declare global {
  interface Window {
    kakao?: {
      maps: {
        load: (callback: () => void) => void;
        LatLng: new (latitude: number, longitude: number) => KakaoLatLng;
        LatLngBounds: new () => KakaoLatLngBounds;
        Map: new (container: HTMLElement, options: KakaoMapOptions) => KakaoMapInstance;
        Marker: new (options: KakaoMarkerOptions) => KakaoMarker;
        InfoWindow: new (options: KakaoInfoWindowOptions) => KakaoInfoWindow;
        event: {
          addListener: (target: object, type: string, handler: () => void) => void;
        };
      };
    };
  }

  interface KakaoLatLng {}

  interface KakaoLatLngBounds {
    extend(position: KakaoLatLng): void;
  }

  interface KakaoMapOptions {
    center: KakaoLatLng;
    level: number;
  }

  interface KakaoMapInstance {
    panTo(position: KakaoLatLng): void;
    relayout(): void;
    setBounds(bounds: KakaoLatLngBounds): void;
    setCenter(position: KakaoLatLng): void;
    setLevel(level: number): void;
  }

  interface KakaoMarkerOptions {
    map: KakaoMapInstance;
    position: KakaoLatLng;
    title?: string;
  }

  interface KakaoMarker {
    getPosition(): KakaoLatLng;
    setMap(map: KakaoMapInstance | null): void;
  }

  interface KakaoInfoWindowOptions {
    content: string;
    removable?: boolean;
  }

  interface KakaoInfoWindow {
    close(): void;
    open(map: KakaoMapInstance, marker: KakaoMarker): void;
  }
}
