
import "./mapbox";

document.addEventListener("DOMContentLoaded", function() {
  mapboxgl.accessToken = 'YOUR_MAPBOX_ACCESS_TOKEN'; // Replace with your token

  var map = new mapboxgl.Map({
    container: 'map', // ID of the div
    style: 'mapbox://styles/mapbox/streets-v11', // Map style
    center: [-122.4194, 37.7749], // Replace with your coordinates [lng, lat]
    zoom: 12
  });

  // Add a marker
  new mapboxgl.Marker()
    .setLngLat([-122.4194, 37.7749]) // Replace with your coordinates
    .addTo(map);
});
