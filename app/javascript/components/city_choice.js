const newLocation = () => {

  function setCookie(valeur) {
    document.cookie = `city=${valeur}`;
    console.log(document.cookie);
  }
  const btnInput = document.querySelector("#input-submit");
  const input = document.querySelector("#input-search-style");
  btnInput.addEventListener("click", () => {
    setCookie(input.value);
    console.log(document.cookie);
  });
};

export { newLocation }
