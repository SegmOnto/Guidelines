# SegmOnto Guidelines

This repository contains the Guidelines of the SegmOnto controlled vocabulary for layout analysis and segmentation.

## Zones and lines

There are two classes of regions: **zones** (an area, i.e., polygon, on the page) and **lines** (an area, plus a baseline).

Zones or lines can be caracterised by:

- a type (mandatory, controlled values)
- a subtype (optional, suggested open list of values)
- a number (optional)

of the form

`Region(:subtype)?(#\d)?`

e.g.

`MainZone`

or
- `MainZone#1`,
- `MainZone:column`
- `MainZone:column#1`.

## Content of the repository

The repository contains the text of the Guidelines and definitions, with somes examples, as markdown files stored in two folders:

- Zones
- Lines

