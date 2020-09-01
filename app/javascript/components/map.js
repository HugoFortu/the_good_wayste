import mapboxgl from 'mapbox-gl';

const map = () => {

  function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  }

  const searchAddress = () => {
    const access = 'access_token=pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';
    const url = "https://api.mapbox.com/geocoding/v5/mapbox.places/";
    var address = getCookie("city");
    console.log(address);
    fetch(`${url}${address}.json?${access}`)
    .then(response => response.json())
    .then((data) => {

      const coordinates = data.features[0].geometry.coordinates;
      console.log(coordinates[0], coordinates[1]);
      addMap(coordinates[0], coordinates[1]);
    });
  }


  const addMap = (long, lat) => {
    mapboxgl.accessToken = 'pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';
    const divMap = document.querySelector('#map');
    if (divMap){
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/hugofortu/ckejqlw6608n41anypufqo3jc',
        center: [long, lat],
        zoom: 13
      });
      // const marker = new mapboxgl.Marker()
      // .setLngLat([long, lat])
      // .addTo(map);
    };
  }
  const divMap = document.querySelector('#map');
  if (divMap){
    searchAddress();
  }
}

export { map }


// const location = document.querySelector('#address');
// const buttonAddress = document.querySelector('#search');
// const coordinatesDisplay = document.querySelector('#coordinates');

// const addMap = (long, lat) => {
//   mapboxgl.accessToken = 'pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';
//   const map = new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v9',
//     center: [long, lat],
//     zoom: 12
//   });
//   const marker = new mapboxgl.Marker()
//     .setLngLat([long, lat])
//     .addTo(map);
// };

// const searchAdress = (addressValue) => {
//   fetch(`${url}${addressValue}.json?${access}`)
//     .then(response => response.json())
//     .then((data) => {
//       coordinatesDisplay.innerHTML = '';
//       const coordinates = data.features[0].geometry.coordinates;
//       console.log(coordinates[0], coordinates[1]);
//       const html = `<h3>Long: ${coordinates[0]} , Lat: ${coordinates[1]}</h3>`;
//       coordinatesDisplay.insertAdjacentHTML('afterbegin', html);
//       addMap(coordinates[0], coordinates[1]);
//     });
// };


// buttonAddress.addEventListener('click', (event) => {
//   event.preventDefault();
//   const addressValue = location.value;
//   searchAdress(addressValue);
// });

