import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typedText = document.querySelector('#banner-typed-text');

  if (typedText) {
    new Typed('#banner-typed-text', {
      strings: ["Scannez ...", "Jouez ...", "& Trier ! "],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
