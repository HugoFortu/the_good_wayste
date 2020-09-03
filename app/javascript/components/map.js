import mapboxgl from 'mapbox-gl';

let map;
let divMap;
let markers = [];

const hideMarker = marker => marker.obj.getElement().style.visibility = 'hidden'

const showMarker = marker => marker.obj.getElement().style.visibility = ''

const hideMarkers = () => markers.forEach(hideMarker)

const showMarkers = type => markers.filter(marker => marker.type == type).forEach(showMarker)

const initFilter = () => {
    const filterId = divMap.dataset.filterElementId;

    if (filterId == undefined)
      return

    hideMarkers()
    document.querySelector(`#${filterId}`).addEventListener('change', (e) => {
      hideMarkers()
      showMarkers(e.currentTarget.value)
    })
}

const createMap = (center) => {
  map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/hugofortu/ckejqlw6608n41anypufqo3jc',
    center: [center.longitude, center.latitude],
    zoom: 13
  });
}

const addMarkers = () => {
  const dataMarkers = JSON.parse(divMap.dataset.markers)

  dataMarkers.forEach((dataMarker) => {
    const marker = new mapboxgl.Marker()
    .setLngLat([dataMarker.longitude, dataMarker.latitude])
    .addTo(map);

    markers.push({obj: marker, type: dataMarker.type})
  })
}

const initMap = () => {
  divMap = document.querySelector('#map');
  if (divMap == null)
    return

  const center = JSON.parse(divMap.dataset.center)

  mapboxgl.accessToken = 'pk.eyJ1IjoiaHVnb2ZvcnR1IiwiYSI6ImNrZGE1cmRkdTBhcG8yeG16ajVxeHUxbGEifQ.shN-X43Oa8AUOL9muDkUxQ';

  createMap(center);
  addMarkers();
  initFilter();
}

export { initMap }

