// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import '../stylesheets/application.scss';
import "mapbox-gl/dist/mapbox-gl.css";



import { quaggaScanner } from '../scanner/scanner'
import { currentLocation } from '../geolocation/geolocation'
import { newLocation } from '../components/city_choice'
import { orderByOccurrence } from '../scanner/scanner'
import { loadDynamicBannerText } from '../components/typing_effect';
import { createComponentFromForm  } from '../components/form_component'
import { buttonInputSwitch } from '../components/postcode-input';
import { crossAlertQuit } from '../components/alert-quit';
import { scanButtonClick } from '../components/scan_button';
import { learnMoreDropdown } from '../components/learn-more-dropdown';
import { fillStar } from '../cookies/cookies';
import { map } from '../components/map';
import { tooltipDisplay } from '../components/tooltip-recyclability';
import { showmap } from '../components/map_show';

document.addEventListener('turbolinks:load', () => {
  quaggaScanner();
  createComponentFromForm();
  currentLocation();
  newLocation();
  scanButtonClick();
  learnMoreDropdown();
  buttonInputSwitch();
  fillStar();
  map();
  showmap();
  crossAlertQuit();
  tooltipDisplay();
  // laisser fonction à la fin (ou corriger :) )
  loadDynamicBannerText();
});
