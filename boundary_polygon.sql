-- etldoc: osm_border_polygon_linestring_gen_z0 ->  osm_border_polygon_gen_z0
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z0;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z0 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(2)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z2
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(0) * ZRes(0)
;

-- etldoc: osm_border_polygon_linestring_gen_z1 ->  osm_border_polygon_gen_z1
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z1;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z1 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(3)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z2
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(1) * ZRes(1)
;

-- etldoc: osm_border_polygon_linestring_gen_z2 ->  osm_border_polygon_gen_z2
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z2;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z2 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(4)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z2
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(2) * ZRes(2)
;

-- etldoc: osm_border_polygon_linestring_gen_z3 ->  osm_border_polygon_gen_z3
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z3;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z3 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(5)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z3
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(3) * ZRes(3)
;

-- etldoc: osm_border_polygon_linestring_gen_z4 ->  osm_border_polygon_gen_z4
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z4;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z4 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(6)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z4
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(4) * ZRes(4)
;

-- etldoc: osm_border_polygon_linestring_gen_z5 ->  osm_border_polygon_gen_z5
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z5;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z5 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(7)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z5
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(5) * ZRes(5)
;

-- etldoc: osm_border_polygon_linestring_gen_z6 ->  osm_border_polygon_gen_z6
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z6;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z6 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(8)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z6
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(6) * ZRes(6)
;

-- etldoc: osm_border_polygon_linestring_gen_z7 ->  osm_border_polygon_gen_z7
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z7;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z7 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(9)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z7
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(7) * ZRes(7)
;

-- etldoc: osm_border_polygon_linestring_gen_z8 ->  osm_border_polygon_gen_z8
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z8;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z8 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(10)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z8
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(8) * ZRes(8)
;

-- etldoc: osm_border_polygon_linestring_gen_z9 ->  osm_border_polygon_gen_z9
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z9;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z9 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(11)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z9
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(9) * ZRes(9)
;

-- etldoc: osm_border_polygon_linestring_gen_z10 ->  osm_border_polygon_gen_z10
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z10;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z10 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(12)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z10
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(10) * ZRes(10)
;

-- etldoc: osm_border_polygon_linestring_gen_z11 ->  osm_border_polygon_gen_z11
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z11;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z11 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(13)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z11
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(11) * ZRes(11)
;

-- etldoc: osm_border_polygon_linestring_gen_z12 ->  osm_border_polygon_gen_z12
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z12;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z12 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(14)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z12
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(12) * ZRes(12)
;

-- etldoc: osm_border_polygon_linestring_gen_z13 ->  osm_border_polygon_gen_z13
DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z13;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z13 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_Buffer(
            ST_SimplifyPreserveTopology(
                ST_MakePolygon(geometry),
                ZRes(15)
            ),
        0)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z13
    WHERE
        ST_GeometryType(geometry) = 'ST_LineString'
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4 AND
    ST_Area(ST_MakePolygon(geometry)) > ZRes(13) * ZRes(13)
;

DROP MATERIALIZED VIEW IF EXISTS osm_border_polygon_gen_z14;
CREATE MATERIALIZED VIEW osm_border_polygon_gen_z14 AS
SELECT
    relation_id,
    ST_Subdivide(
        ST_MakePolygon(geometry)
    ) AS geometry,
    name,
    admin_level
FROM (
    SELECT
        relation_id,
        (ST_Dump(ST_LineMerge(ST_Collect(geometry)))).geom AS geometry,
        name,
        admin_level
    FROM
        osm_border_polygon_linestring_gen_z13
    WHERE
        ST_GeometryType(geometry) = 'ST_LineString'
    GROUP BY
        relation_id,
        name,
        admin_level
    ) AS t
WHERE
    ST_IsClosed(geometry) AND
    ST_NPoints(geometry) >= 4
;


-- etldoc: layer_boundary_polygon[shape=record fillcolor=lightpink, style="rounded,filled",
-- etldoc:     label="<sql> layer_boundary_polygon |<z0> z0 |<z1> z1 |<z2> z2 | <z3> z3 | <z4> z4 | <z5> z5 | <z6> z6 | <z7> z7 | <z8> z8 | <z9> z9 |<z10> z10 |<z11> z11 |<z12> z12|<z13> z13+"]
CREATE OR REPLACE FUNCTION layer_boundary_polygon(bbox geometry, zoom_level int)
    RETURNS TABLE
            (
                geometry geometry,
                name text,
                admin_level int
            )
AS
$$
SELECT geometry, name, admin_level
FROM (
         -- etldoc: osm_border_polygon_gen_z0 ->  layer_boundary_polygon:z0
         SELECT *
         FROM osm_border_polygon_gen_z0
         WHERE geometry && bbox
           AND zoom_level = 0
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z1 ->  layer_boundary_polygon:z1
         SELECT *
         FROM osm_border_polygon_gen_z1
         WHERE geometry && bbox
           AND zoom_level = 1
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z2 ->  layer_boundary_polygon:z2
         SELECT *
         FROM osm_border_polygon_gen_z2
         WHERE geometry && bbox
           AND zoom_level = 2
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z3 ->  layer_boundary_polygon:z3
         SELECT *
         FROM osm_border_polygon_gen_z3
         WHERE geometry && bbox
           AND zoom_level = 3
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z4 ->  layer_boundary_polygon:z4
         SELECT *
         FROM osm_border_polygon_gen_z4
         WHERE geometry && bbox
           AND zoom_level = 4
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z5 ->  layer_boundary_polygon:z5
         SELECT *
         FROM osm_border_polygon_gen_z5
         WHERE geometry && bbox
           AND zoom_level = 5
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z6 ->  layer_boundary_polygon:z6
         SELECT *
         FROM osm_border_polygon_gen_z6
         WHERE geometry && bbox
           AND zoom_level = 6
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z7 ->  layer_boundary_polygon:z7
         SELECT *
         FROM osm_border_polygon_gen_z7
         WHERE geometry && bbox
           AND zoom_level = 7
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z8 ->  layer_boundary_polygon:z8
         SELECT *
         FROM osm_border_polygon_gen_z8
         WHERE geometry && bbox
           AND zoom_level = 8
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z9 ->  layer_boundary_polygon:z9
         SELECT *
         FROM osm_border_polygon_gen_z9
         WHERE geometry && bbox
           AND zoom_level = 9
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z10 ->  layer_boundary_polygon:z10
         SELECT *
         FROM osm_border_polygon_gen_z10
         WHERE geometry && bbox
           AND zoom_level = 10
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z11 ->  layer_boundary_polygon:z11
         SELECT *
         FROM osm_border_polygon_gen_z11
         WHERE geometry && bbox
           AND zoom_level = 11
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z12 ->  layer_boundary_polygon:z12
         SELECT *
         FROM osm_border_polygon_gen_z12
         WHERE geometry && bbox
           AND zoom_level = 12
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z13 -> layer_boundary_polygon:z13
         SELECT *
         FROM osm_border_polygon_gen_z13
         WHERE geometry && bbox
           AND zoom_level = 13
         UNION ALL
         -- etldoc: osm_border_polygon_gen_z14 -> layer_boundary_polygon:z14
         SELECT *
         FROM osm_border_polygon_gen_z14
         WHERE geometry && bbox
           AND zoom_level >= 14
     ) AS zoom_levels;
$$ LANGUAGE SQL STABLE
                -- STRICT
                PARALLEL SAFE;
