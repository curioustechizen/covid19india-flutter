As mentioned in the README, this project is inspired by https://github.com/covid19india/covid19india-react. That project uses [TopoJSON](https://github.com/topojson/topojson/wiki) to render the [national and state  maps](https://github.com/covid19india/covid19india-react/tree/ce37da18f9d541ff265919e50caa45009a60343e/public/maps) of India. This is a great technology because it does not require you to use a third party Map library in the app. We don't use any lat-long in the app, so all we need is SVGs to get the shape of the maps.

Unfortunately, I did not find a way to use TopoJSON outside of Javascript. It only has a [client library](https://github.com/topojson/topojson-client) for JS (at the time of this writing). 

However, I did stumble across [flutter-clickable-regions](https://github.com/gi097/flutter_clickable_regions) which allows you to interact with individual regions inside an SVG, and it works great.

For the India map, I downloaded an India SVG map from the internet ,and manually updated the `map_svg_data.dart` file with the paths of each state. In order to view distict level details, it would be better to use the TopoJSON files from the covid19india-react repo, and convert them to SVG.

## Convert TopoJSON to SVG

### Command line option

Visit the TopoJSON client page above for instructions on how to install the required tools using NPM. Then, use the following

```
topo2geo india=india_geojson.json < india.json
geoproject 'd3.geoMercator()' -o india_mercator.json india_geojson.json
geo2svg -o india.svg india_mercator.json
```

For state maps showing district level detail,

```
topo2geo karnataka_district.json < karnataka.json
geoproject 'd3.geoMercator()' -o karnataka_mercator.json karnataka_district.json
geo2svg -o karnataka.svg karnataka_mercator.json

```

### MapShaper website option

- Go to https://mapshaper.org/
- Drag in the TopoJSON file
- If importing India file, then in the "Import options" field, add `id-field="st_nm"`. If importing state files, use `id-field="district"` instead.
- Then export to SVG

### MapShaper command line option

**TODO**: Add info about using the MapShaper [command line](https://github.com/mbloch/mapshaper/wiki/Command-Reference)

### Import into map_svg_data

Regardless of how you obtain the SVG, there's a manual step to copy-paste the SVG paths into `@SvgPath` annotations in the dart file.

**TODO:** Find a way to automate this. See [this](https://github.com/dnfield/flutter_built_path/issues/1) issue and follow the links from there. In our case we know exactly what the format of the SVG will be so it should be feasible.




