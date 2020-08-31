import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Scannez ...", "Jouez ...", "& Trier ! "],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
