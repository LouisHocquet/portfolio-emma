const initBannerVideo = () => {
  const bannerVideo = document.querySelector('.banner-showreel>video');
  if (bannerVideo) {
    bannerVideo.play();
    bannerVideo.muted = true;

    document.addEventListener("fullscreenchange", function() {
      if (document.fullscreen) {
        bannerVideo.muted = false;
      } 
      // else {
      //   console.log('Exiting Full Screen Toggle');
      // }
    });
  }
}

export { initBannerVideo };
