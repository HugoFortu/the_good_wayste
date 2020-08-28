const crossAlertQuit = () => {
let fixedPositionAlert = document.querySelector('.fixed-position-alert');
let alertQuit = document.querySelector('.alert-quit');


const hide = () => {
  fixedPositionAlert.classList.add("hidden");
}

alertQuit.addEventListener('click', hide);

}

export { crossAlertQuit };
