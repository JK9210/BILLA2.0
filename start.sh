#!/bin/bash

set -e
export FLASK_APP=web:create_app
gunicorn -w 4 -b 0.0.0.0:${PORT:-8080} web:create_app &
python3 -m VenomX
