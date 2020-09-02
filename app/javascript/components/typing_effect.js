import Typed from 'typed.js';

const loadDynamicBannerText = () => {


  if (document.querySelector('#banner-typed-text') == null)
    return

  new Typed('#banner-typed-text', {
    strings: ["Scannez ...", "&amp; Triez !"],
    typeSpeed: 40,
    backSpeed: 0,
    loop: true
  });

}

export { loadDynamicBannerText };
