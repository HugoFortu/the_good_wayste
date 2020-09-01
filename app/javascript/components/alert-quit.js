const crossAlertQuit = () => {
  let fixedPositionAlert = document.querySelector('.fixed-position-alert');
  let alertQuit = document.querySelector('.alert-quit');

  const hide = () => {
    fixedPositionAlert.classList.add("hidden");
  }

  if (alertQuit) {
    alertQuit.addEventListener('click', hide);
  }
}

export { crossAlertQuit };
