{ mapbox } = require "npm"
mapboxAccessDatasetToken = "pk.eyJ1IjoiZG15dHJvZnVyeSIsImEiOiJjajAzdzE2bjkwMDhvMzNwMG5iZmNhM21vIn0.P2uiXmVTlj4jb_SZH5Gkgw"
datasetID = "cj4adx8v80vll32qo9r2u98q0"
mapboxClient = new mapbox(mapboxAccessDatasetToken)

# Use the listFeatures method to fetch data
mapboxClient.listFeatures(datasetID, {},
 (err, dataset) ->
   print err if err
   # Create a list of locations
   for feature,i in dataset.features
     locationTitle = new Layer
       html: feature.properties.place_name + feature.properties.address
)

