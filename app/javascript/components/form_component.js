const createComponentFromForm = () => {
  console.log('coucou');
  const clickables = document.querySelectorAll('.clickable_components')

  clickables.forEach((clickable) =>
    clickable.addEventListener('click', (event) => {
      console.log(clickable.querySelector('img').dataset.component )
    })
  )
};


export { createComponentFromForm }
