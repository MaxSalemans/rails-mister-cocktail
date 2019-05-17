import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails are so 2008 . . ."],
    typeSpeed: 300,
  });
}

export { loadDynamicBannerText };
