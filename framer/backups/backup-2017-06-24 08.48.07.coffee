{ mapboxgl } = require "npm"


# fetch the feature from the Client dataset
mapboxClient.listFeatures(clientID, {},
(err, clientset) ->
print err if err
)
# add Client dataset to map, you can set the clusterMaxZoom and clusterRadius parameters here. 
map.on("load", () ->
map.addSource("clients",{"type": "geojson", "data": clientset, cluster: true, clusterMaxZoom: 14, clusterRadius: 50})
)
# according data visualization theory, qualitative data using qualitative visualize parameter, such as radius here; thus adding point count and radius pair(not point count and color pair in the Mapbox example)
layers = [
[150, 40],
[20, 30],
[0, 22]
]
# add three layers to represent different point count, 0-20 points using 22 radius, 20-150 using 30 radius and over 150 using 40 radius
ayers.forEach((layer, i) ->
map.addLayer({
"id": "cluster-" + i,
"type": "circle",
"source": "clients",
"paint": {
"circle-color": '#1BBC9B',
"circle-radius": layer[1]
},
'filter': if (i == 0) then ['>=', 'point_count', layer[0]] else ['all', ['>=', 'point_count', layer[0]], ['<', 'point_count', layers[i-1][0]]]
})
)
# add a count number layer
map.addLayer({
"id": "cluster-count",
"type": "symbol",
"source": "clients",
"layout": {
"text-field": "{point_count}",
"text-font": [
"DIN Offc Pro Medium",
"Arial Unicode MS Bold"
],
"text-size": 18
}
})