# OpenMapTiles extra layers for Administrative Area

This project is an [OpenMapTiles](https://github.com/openmaptiles/openmaptiles) add-on layers.

It adds the data layer:

* `boundary_polygon`: containing polygon for adminstrative area from OSM relation `type=boundary` + `boundary=adminstrative` + `admin_level=1-9`

Git-clone this project on the root the the OpenMapTiles project:
```
git clone https://github.com/makina-maps/openmaptiles-layer-boundary_polygon.git layers_extra/boundary_polygon
```

Add the layer definition from `layers_extra/boundary_polygon/boundary_polygon/boundary_polygon.yaml` on your own `openmaptiles.yaml` tileset definition. Change `TILESET_FILE` from the OpenMapTiles `.env` to point on it.

# License

All code in this repository is under the BSD license and the cartography decisions encoded in the schema and SQL are licensed under CC-BY.

There is no extra requirement of attribution to this layer than the default OpenMapTiles License.
