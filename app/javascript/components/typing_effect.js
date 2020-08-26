var x = 0;
var textEffect = "SCANNEZ         JOUEZ         SCANNEZ";
var container = document.getElementById('typing-effect');

function animate() {
  if(x < textEffect.length){
  container.innerHTML += textEffect.charAt(x);
  x ++
  setTimeout(animate, 80);
  }
}
animate();

export {animate};
