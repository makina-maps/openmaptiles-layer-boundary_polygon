-- etldoc: osm_border_polygon_gen_z14 ->  osm_border_label
-- etldoc: osm_border_polygon_relation ->  osm_border_label
DROP MATERIALIZED VIEW IF EXISTS osm_border_label;
CREATE MATERIALIZED VIEW osm_border_label AS
WITH
label AS (
    SELECT DISTINCT ON (relation_id)
        *,
        COALESCE(tags->'ISO3166-1', tags->'ISO3166-2', tags->'ref:NUTS', tags->'ref:INS', tags->'ref:INSEE', tags->'de:regionalschluessel', tags->'ref:ISTAT', tags->'ine:municipio', tags->'nat_ref', tags->'ref') AS ref
    FROM
        osm_border_polygon_relation
    WHERE
        role = 'label'
    ORDER BY
        relation_id
),
poly AS (
    SELECT
        relation_id,
        ST_Collect(geometry) AS geometry,
        name,
        admin_level,
        ref,
        tags
    FROM
        osm_border_polygon_gen_z14
    GROUP BY
        relation_id,
        name,
        admin_level,
        ref,
        tags
)
SELECT
    relation_id,
    CASE
        WHEN label.geometry IS NOT NULL
            THEN ST_Centroid(label.geometry)
        WHEN ST_Intersects(ST_Centroid(poly.geometry), poly.geometry)
            THEN ST_Centroid(poly.geometry)
        ELSE ST_PointOnSurface(poly.geometry)
    END AS geometry,
    COALESCE(label.name, poly.name) AS name,
    COALESCE(label.admin_level, poly.admin_level) AS admin_level,
    COALESCE(label.ref, poly.ref) AS ref,
    COALESCE(label.tags, poly.tags) AS tags
FROM
    label
    FULL JOIN poly USING (
        relation_id
    );
CREATE INDEX osm_border_label_ixg_geometry ON osm_border_label(geometry);

-- etldoc: layer_boundary_polygon[shape=record fillcolor=lightpink, style="rounded,filled",
-- etldoc:     label="<sql> layer_boundary_label |<z0> z0 |<z1> z1 |<z2> z2 | <z3> z3 | <z4> z4 | <z5> z5 | <z6> z6 | <z7> z7 | <z8> z8 | <z9> z9 |<z10> z10 |<z11> z11 |<z12> z12|<z13> z13+"]
CREATE OR REPLACE FUNCTION layer_boundary_label(bbox geometry, zoom_level int)
    RETURNS TABLE
            (
                relation_id bigint,
                geometry geometry,
                name text,
                admin_level int,
                ref varchar,
                tags hstore
            )
AS
$$
        -- etldoc: osm_border_label ->  layer_boundary_label
        SELECT *
        FROM osm_border_label
        WHERE geometry && bbox
        AND zoom_level <= 7
        AND admin_level <= 6
        UNION ALL

        SELECT *
        FROM osm_border_label
        WHERE geometry && bbox
        AND zoom_level BETWEEN 8 AND 11
        AND admin_level <= 8
        UNION ALL

        SELECT *
        FROM osm_border_label
        WHERE geometry && bbox
        AND zoom_level >= 13;
$$ LANGUAGE SQL STABLE
                -- STRICT
                PARALLEL SAFE;
