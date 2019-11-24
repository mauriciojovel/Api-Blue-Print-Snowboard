#!/bin/sh
set -e

snowboard html -c config.yaml -o index.html API.apib
snowboard http -c config.yaml -t index.html API.apib &
snowboard mock -c config.yaml API.apib

exec "$@"
