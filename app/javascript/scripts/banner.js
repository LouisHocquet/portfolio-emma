const initBannerVideo = () => {
  const bannerVideo = document.querySelector('.banner-showreel>video');
  if (bannerVideo) {
    setTimeout(() => {
      bannerVideo.play();
      bannerVideo.muted = true;
    }, 200);

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
