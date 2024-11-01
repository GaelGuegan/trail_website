#!/bin/bash

gpx_filename=$1
geojson_filename=$(basename $gpx_filename .gpx).geojson

echo "var trace = " >> $geojson_filename
togeojson $gpx_filename >> $geojson_filename
echo ";" >> $geojson_filename