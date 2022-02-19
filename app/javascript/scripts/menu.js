const initMenu = () => {
  const navbar = document.querySelector('.navbar-container');
  if (navbar) {
    const navbarBurgerIcon = navbar.querySelector('.burger-icon');
    const menu = document.querySelector('.menu-fixed-container');
    const menuCloseIcon = menu.querySelector('.close-menu-icon');

    navbarBurgerIcon.addEventListener('click', () => {
      showMenu();
    });

    menuCloseIcon.addEventListener('click', () => {
      hideMenu();
    });

    const showMenu = () => {
      menu.style.visibility = 'visible';
    }
  
    const hideMenu = () => {
      menu.style.visibility = 'hidden';
    }
  }
}

export { initMenu };
