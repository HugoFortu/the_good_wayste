const createComponentFromForm = () => {
  const clickables = document.querySelectorAll('.clickable_components')

  clickables.forEach((clickable) =>
    clickable.addEventListener('click', (event) => {

      let name = clickable.querySelector('img').dataset.component
      let imageName = clickable.querySelector('img').dataset.paramname
      let image = document.querySelector('#component_image');
      let nameSpace = document.querySelector('#component_name');
      let background = document.querySelector('.overlay');

      background.classList.remove('hidden');
      // background.classList.add('blurred')
      image.innerHTML = `<img src="/assets/${imageName}.png" alt="" style="width:120px">` ;
      nameSpace.innerText = name;


      // après validation => clear image, name_space, add class hidden
    })
  )
};


export { createComponentFromForm }
