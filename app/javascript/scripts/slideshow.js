const initSlideShow = () => {

  const slideShowContainer = document.querySelector('.slideshow-container');
  if (slideShowContainer) {

    const btnNext = document.querySelector('.btnNext');
    const btnPrev = document.querySelector('.btnPrev');
    if (btnNext && btnPrev) {
      btnNext.addEventListener('click', (event) => {
        nextSlide();
      })
      btnPrev.addEventListener('click', (event) => {
        prevSlide();
      })
    }

    const showSlides = (n) => {
      let i;
      const slides = document.querySelectorAll('.mySlides');
      if (n > slides.length) {slideIndex = 1}
      if (n < 1) {slideIndex = slides.length}
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }
      slides[slideIndex-1].style.display = "flex";
    }
    
    let slideIndex = 1;
    showSlides(slideIndex);
  
    const nextSlide = () => {
      showSlides(slideIndex += 1);
    }

    const prevSlide = () => {
      showSlides(slideIndex -= 1);
    }

    // Videos
    const slideShowVideo = slideShowContainer.querySelector('video');
    if (slideShowVideo) {
      slideShowVideo.muted = true;
      slideShowVideo.play();
    }

    // Back to previous screen
    const backButton = slideShowContainer.querySelector('.close-work-show-icon');
    if (backButton) {
      backButton.addEventListener('click', () => {
        console.log('click on close');
        history.back();
      })
    }
  }
}

export { initSlideShow };
