const fillStar = () => {

  let unfav = document.querySelector('#star-empty');
  let fav = document.querySelector('#star-full');
  const id = unfav.dataset.id;

  const toggle = () => {
    const method = (unfav.dataset.favorited == 'true') ? 'DELETE' : 'POST';
    fetch(`/products/${id}/favorites`, {
      method: method
    }).then( () => {
      unfav.classList.toggle("hidden")
      fav.classList.toggle("hidden")
    })
  };

  if (unfav) {
    unfav.addEventListener('click', toggle)
  }

  if (fav) {
    fav.addEventListener('click', toggle)
  }

};

export { fillStar }
