import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Take your parties and events outdoors!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
