const buttonInputSwitch = () => {
  let button = document.querySelector('.btn-location');
  let inputDiv = document.querySelector('.input-search');
  let inputButton = document.querySelector('#input-submit');

  const toggle = () => {
    button.classList.toggle("hidden");
    inputDiv.classList.toggle("hidden");
  }

if (inputDiv){
    button.addEventListener('click', toggle)

  }
}

export { buttonInputSwitch };
