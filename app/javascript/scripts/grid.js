const initGridVideos = () => {
  const gridContainer = document.querySelector('.grid-container');
  if (gridContainer) {
    const gridVideos = gridContainer.querySelectorAll('video');
    gridVideos.forEach((video) => {
      video.play();
      video.muted = true;
    })
  }
}

export { initGridVideos };
