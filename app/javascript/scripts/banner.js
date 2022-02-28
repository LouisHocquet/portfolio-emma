const initBannerVideo = () => {
  const bannerVideo = document.querySelector('.banner-showreel>video');
  if (bannerVideo) {
    bannerVideo.muted = true;
    bannerVideo.play();
  }
}

export { initBannerVideo };
