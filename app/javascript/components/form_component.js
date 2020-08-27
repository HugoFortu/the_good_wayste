const createComponentFromForm = () => {
  console.log('coucou');
  const clickables = document.querySelectorAll('.clickable_components')

  clickables.forEach((clickable) =>
    clickable.addEventListener('click', (event) => {
      console.log(clickable.querySelector('img').dataset.component )

      let background = document.querySelector('#components_form').firstChild;
      background.classList.add('components_form_blur');
      console.log('je blur le fond')

      let modal = document.querySelector('#material_form');
      background.classList.remove('hidden_first');
      console.log('j\'affiche la modal')
    })
  )
};


export { createComponentFromForm }
