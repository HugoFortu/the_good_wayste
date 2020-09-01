const learnMoreDropdown = () => {
  const dropClickedCards = document.querySelectorAll('.card-learnmore');

  dropClickedCards.forEach((card) => {
    card.addEventListener("click", event => {
      card.classList.toggle("truncated");
    })
  })
}

export { learnMoreDropdown };

