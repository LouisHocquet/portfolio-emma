const initVh100 = () => {
  const vh100Element = document.querySelector('.vh100');

  const setDocumentVh = () => {
    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
  }

  if (vh100Element) {
    setDocumentVh();
    window.addEventListener('resize', () => {
      setDocumentVh();
    });

  }

}

export { initVh100 };