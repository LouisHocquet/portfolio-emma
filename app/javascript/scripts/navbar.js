const initUpdateNavbarOnScroll = () => {
  // reduce navbar opacity on scroll down
  // only on devices with width < 900px
  const navbar = document.querySelector('.navbar-container');
  if (navbar) {
    let lastScrollTop = 0;
    window.addEventListener('scroll', () => {
      let st = window.pageYOffset || document.documentElement.scrollTop;
      if (st > lastScrollTop) {
        navbar.classList.add('navbar-transparent');
      } else {
        navbar.classList.remove('navbar-transparent');
      }
      lastScrollTop = st <= 0 ? 0 : st;
    }, false);
  }
}

export { initUpdateNavbarOnScroll };
