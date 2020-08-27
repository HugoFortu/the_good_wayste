const createComponentFromForm = () => {
  console.log('coucou');
  const clickables = document.querySelectorAll('.clickable_components')

  clickables.forEach((clickable) =>
    clickable.addEventListener('click', (event) => {

      let name = clickable.querySelector('img').dataset.component
      let modal = document.querySelector('.modale');
      let image = document.querySelector('#component_image');
      let name_space = document.querySelector('#component_name');
      let background = document.querySelector('.full_width_modal');

      modal.classList.add('open');
      background.classList.add('blurred')
      image.innerHTML = `<img src="/assets/${name}.png" alt="" style="width:90px">` ;
      name_space.innerText = name;


      // après validation => clear image, name_space, add class hidden
    })
  )
};


export { createComponentFromForm }
