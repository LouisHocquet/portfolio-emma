const initGridVideos = () => {
  const gridContainer = document.querySelector('.grid-container');
  if (gridContainer) {
    const gridVideos = gridContainer.querySelectorAll('video');
    gridVideos.forEach((video) => {
      video.play();
      video.muted = true;
      video.addEventListener('click', (event) => {
        event.preventDefault();
      })
    })
  }
}

const initCategoryShowVideos = () => {
  const categoryWorkList = document.querySelector('.category-work-list');
  if (categoryWorkList) {
    const categoryShowVideos = categoryWorkList.querySelectorAll('video');
    gridVideos.forEach((video) => {
      video.play();
      video.muted = true;
      video.addEventListener('click', (event) => {
        event.preventDefault();
      })
    })
  }
}

export { initGridVideos, initCategoryShowVideos };
