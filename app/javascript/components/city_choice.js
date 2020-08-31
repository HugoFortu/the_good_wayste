const newLocation = () => {
  function setCookie(valeur) {
    document.cookie = `city=${valeur}`;
    console.log(document.cookie);
  }
  const btn_input = document.querySelector("#input-submit");
  const input = document.querySelector("input-search-style");

  btn_input.addEventListener("submit", () => {
    setCookie(input.value);
    console.log(document.cookie);
  });
};

export { newLocation }
