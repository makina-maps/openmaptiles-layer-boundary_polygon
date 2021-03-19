# OpenMapTiles extra layers for Administrative Area

This project is an [OpenMapTiles](https://github.com/openmaptiles/openmaptiles) add-on layers.

It adds the data layer:

* `boundary_polygon`: containing polygon for adminstrative area from OSM relation `type=boundary` + `boundary=adminstrative` + `admin_level=1-9`
* `boundary_label`: containing, OSM `label` position, `admin_centre` position or a point in the largest polygon of the adminstrative area.

Git-clone this project on the root the the OpenMapTiles project:
```
git clone https://github.com/makina-maps/openmaptiles-layer-boundary_polygon.git layers_extra/boundary_polygon
```

Add the layer definition to your own `openmaptiles.yaml` tileset definition:
* `layers_extra/boundary_polygon/boundary_polygon/boundary_polygon.yaml`
* `layers_extra/boundary_polygon/boundary_label/boundary_label.yaml`
Change `TILESET_FILE` from the OpenMapTiles `.env` to point on it.


# License

All code in this repository is under the BSD license and the cartography decisions encoded in the schema and SQL are licensed under CC-BY.

There is no extra requirement of attribution to this layer than the default OpenMapTiles License.
