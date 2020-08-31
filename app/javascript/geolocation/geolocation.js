import mapboxgl from 'mapbox-gl';


const currentLocation = () => {
  var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
  };

  function success(pos) {
    var crd = pos.coords;

    // console.log('Votre position actuelle est :');
    // console.log(`Latitude : ${crd.latitude}`);
    // console.log(`Longitude : ${crd.longitude}`);
    // console.log(`La précision est de ${crd.accuracy} mètres.`);
    reverseGeocoding(crd.latitude, crd.longitude)
  }

      const reverseGeocoding = function (latitude, longitude) {
        const request = require('request');
        var ACCESS_TOKEN = 'pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ'
        var url = 'https://api.mapbox.com/geocoding/v5/mapbox.places/'
                + longitude + ', ' + latitude
                + '.json?access_token=' + ACCESS_TOKEN;

        request({ url: url, json: true }, function (error, response) {
          if (error) {
              console.log('Unable to connect to Geocode API');
          } else if (response.body.features.length == 0) {
              console.log('Unable to find location. Try to'
                          + ' search another location.');
          } else {
              console.log(response.body.features[0].context[2].text);
              const results = document.querySelector("#city");
              const location = `<h2>Bienvenue à ${response.body.features[0].context[2].text}</h2>`;
              results.insertAdjacentHTML("beforeend", location);
          }
      })
    }

  function error(err) {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  }
  if (document.querySelector('#banner-typed-text')) {
    navigator.geolocation.getCurrentPosition(success, error, options);
   };

};
export { currentLocation }
