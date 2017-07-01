mapboxgl = require("npm").mapboxgl

mapboxLayer = new Layer
    ignoreEvents: false
    width: Framer.Device.screen.height
    height: Framer.Device.screen.width
    html: "<div id='map'></div>"

mapElement = mapboxLayer.querySelector("#map")
mapElement.style.height = Framer.Device.screen.height + 'px'
mapElement.style.width = Framer.Device.screen.width + 'px'

mapboxgl.accessToken="<pk.eyJ1IjoiZG15dHJvZnVyeSIsImEiOiJjajRhdjFpbHQwNGQxMnFvenRncGlpMTMwIn0.p1NN4mNTEofErF9WSjYUJQ>"

map = new mapboxgl.Map
    container: mapElement
    zoom: 16
    bearing: 36
    center: [-73.9375,40.754]
    pitch: 30
    style: 'mapbox://styles/mayaqgao/cj3umbh0200042roq84kg7476'

