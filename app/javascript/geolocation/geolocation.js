// import mapboxgl from 'mapbox-gl';


const currentLocation = () => {
  var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
  };

  // function startTimer () {
  //      timer.start();
  //      setTimeout(stopTimer,3);
  // }

  // function stopTimer () {
  //      timer.stop();
  // }

  function setCookie(valeur) {
    document.cookie = `city=${valeur}`;
    console.log(document.cookie);
   }
  function success(pos) {
    var crd = pos.coords;
    reverseGeocoding(crd.latitude, crd.longitude)
  }

  const reverseGeocoding = function (latitude, longitude) {
    const request = require('request');
    const ACCESS_TOKEN = 'pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';
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
          const city = response.body.features[0].context[2].text;
          setCookie(city);
          setTimeout(function(){
            window.location.href = "/";
         }, 2000);
      }
    })
  }

  function error(err) {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  }

  const div = document.querySelector('#geoloc')
  if (div) {
    navigator.geolocation.getCurrentPosition(success, error, options);
 };

};
export { currentLocation }
