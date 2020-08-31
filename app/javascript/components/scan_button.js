const scanButtonClick = () => {
  const button = document.querySelector('.btn-green-js')
  const form = document.querySelector('.form-green-js ')

  button.addEventListener('click', (event) => {
    form.classList.remove('hidden');
    button.classList.add('hidden');
  });
}

export { scanButtonClick }
