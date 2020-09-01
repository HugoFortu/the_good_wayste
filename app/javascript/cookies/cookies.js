const fillStar = () => {

  let unfav = document.querySelector('#star-empty');
  let fav = document.querySelector('#star-full');


  const toggle = (method) => {
    const id = unfav.dataset.id;
    fetch(`/products/${id}/favorites`, {
      method: method
    }).then(() => {
      unfav.classList.toggle("hidden")
      fav.classList.toggle("hidden")
    })
  };

  if (unfav) {
    unfav.addEventListener('click', () => {
      toggle('POST')
    })
  }

  if (fav) {
    fav.addEventListener('click', () => {
      toggle('DELETE')
    })
  }

};

export { fillStar }
