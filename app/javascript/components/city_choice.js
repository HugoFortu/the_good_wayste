const newLocation = () => {
  function setCookie(valeur) {
    document.cookie = `city=${valeur}`;
  }

  const btnInput = document.querySelector("#input-submit");
  const input = document.querySelector("#input-text");

  if (btnInput) {
    btnInput.addEventListener("click", (ev) => {
      ev.preventDefault();
      setCookie(input.value);
      window.location = window.location;
    });
  };
};

export { newLocation }
