const buttonInputSwitch = () => {
let activeButton = document.querySelector('.active');
let button = document.querySelector('.btn-location');
let inputDiv = document.querySelector('.input-search');
let inputButton = document.querySelector('#input-submit');

const toggle = () => {
  button.classList.toggle("hidden");
  inputDiv.classList.toggle("hidden");
}

button.addEventListener('click', toggle)

inputButton.addEventListener('click', toggle)

}

export { buttonInputSwitch };
