const initGridVideos = () => {
  const gridContainer = document.querySelector('.grid-container');
  if (gridContainer) {
    const gridVideos = gridContainer.querySelectorAll('video');
    gridVideos.forEach((video) => {
      video.muted = true;
      video.play();
    })
  }
}

const initCategoryShowVideos = () => {
  const categoryWorkList = document.querySelector('.category-work-list');
  if (categoryWorkList) {
    const categoryShowVideos = categoryWorkList.querySelectorAll('video');
    categoryShowVideos.forEach((video) => {
      video.muted = true;
      video.play();
    })
  }
}

export { initGridVideos, initCategoryShowVideos };
