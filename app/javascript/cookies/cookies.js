const fillStar = () => {

  let unfav = document.querySelector('#star-empty');
  let fav = document.querySelector('#star-full');
  let trashes = document.querySelectorAll('.delete-cross');


  const toggle = (method) => {
    const id = unfav.dataset.id;
    fetch(`/products/${id}/favorites`, {
      method: method
    }).then(() => {
      unfav.classList.toggle("hidden")
      fav.classList.toggle("hidden")
    })
  };

  // const supress = (method) => {
  //   const id = unfav.dataset.id;
  //   fetch(`/products/${id}/favorites`, {
  //     method: method
  //   })
  // }

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

  trashes.forEach((trash) => {
    const card      = trash.closest('.card-fav')
    const productId = card.dataset.productId

    trash.addEventListener('click', (e) => {
      fetch(`/products/${productId}/favorites`, {
        method: 'delete'
      }).then(() => {
        card.parentNode.removeChild(card)
      })
    })
  })


};

export { fillStar }
