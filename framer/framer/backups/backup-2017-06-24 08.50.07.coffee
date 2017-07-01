{ mapboxgl } = require "npm"

mapboxgl.accessToken = 'pk.eyJ1IjoiZG15dHJvZnVyeSIsImEiOiJjajAzdzE2bjkwMDhvMzNwMG5iZmNhM21vIn0.P2uiXmVTlj4jb_SZH5Gkgw';
	map = new mapboxgl.Map({
	container: 'map',
	style: 'mapbox://styles/mapbox/dark-v9',
	center: [-103.59179687498357, 40.66995747013945],
});