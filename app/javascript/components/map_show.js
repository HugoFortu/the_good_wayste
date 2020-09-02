import mapboxgl from 'mapbox-gl';

const showmap = () => {

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

 const addressMarkers = () => {
    const access = 'access_token=pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';
    const url = "https://api.mapbox.com/geocoding/v5/mapbox.places/";
    var address = getCookie("city");
    const honfleurVerre = ["D513, 14600 Honfleur, France", "Place Jean de Vienne, 14600 Honfleur, France", " Place Albert Sorel, 14600 Honfleur, France", " 17 Place Augustin Normand, 14600 Honfleur, France ", "Quai Tostain, 14600 Honfleur, France", "Avenue Marcel Liabastre, 14600 Honfleur, France", "Résidence des Marronniers, 14600 Honfleur, France", "3 Rue du Coq Enchaîne, 14600 La Rivière-Saint-Sauveur, France", "Rue de Canteloup, 14600 Honfleur, France"];
    const lesRousses = ["360-774 D29E2, 39220, Les Rousses","339-189 Route des Rousses d'Amont,39220 Les Rousses", "235-183 Route de Trelarce, 39220", "32-250 Rue des Narcisses, 39220", "22-164 Rue du Prechavin, 39220", "165 Route des Rousses en Bas, 39220 Les Rousses", "372 Route du Noirmont, 39220", "793 Route du Noirmont, 39220", "2-86 Montée du Rochat, 39220"];
    if (address == "Honfleur" || address == "honfleur"){
      honfleurVerre.forEach(element) => {
        fetch(`${url}${element}.json?${access}`)
        .then(response => response.json())
        .then((data) => {
          const coordinates = data.features[0].geometry.coordinates;
          addMarkers(coordinates[0], coordinates[1]);
          }
        )}
      } else if (address == "Les Rousses" || address == "les rousses"){
        lesRousses.forEach(element) => {
        fetch(`${url}${element}.json?${access}`)
        .then(response => response.json())
        .then((data) => {
          const coordinates = data.features[0].geometry.coordinates;
          addMarkers(coordinates[0], coordinates[1]);
          }
        )}
      } else {
        console.log("coucou")
      }
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
  const addMarkers = (long, lat) => {
    const marker = new mapboxgl.Marker()
          .setLngLat(long, lat)
          .addTo(map);
  }

  const addMap = (long, lat) => {
    mapboxgl.accessToken = 'pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';
    const divMap = document.querySelector('.map_borne');
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
       addressMarkers();
    }
  };

  const divMap = document.querySelector('.map_borne');
  if (divMap){
    searchAddress();
  }
}

export { showmap }


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



