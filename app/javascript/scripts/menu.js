const initMenu = () => {
  const navbar = document.querySelector('.navbar-container');
  if (navbar) {
    const navbarBurgerIcon = navbar.querySelector('.burger-icon');
    const menu = document.querySelector('.menu-fixed-container');
    const menuCloseIcon = menu.querySelector('.close-menu-icon');
    const menuOverlay = document.querySelector('.menu-overlay');

    navbarBurgerIcon.addEventListener('click', () => {
      showMenu();
    });

    menuCloseIcon.addEventListener('click', () => {
      hideMenu();
    });

    menuOverlay.addEventListener('click', () => {
      hideMenu();
    });

    const showMenu = () => {
      menu.style.visibility = 'visible';
      menuOverlay.style.visibility = 'visible';
      document.body.classList.add('stop-scrolling');
    }
  
    const hideMenu = () => {
      menu.style.visibility = 'hidden';
      menuOverlay.style.visibility = 'hidden';
      document.body.classList.remove('stop-scrolling');
    }
  }
}

export { initMenu };
