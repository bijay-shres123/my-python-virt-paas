#!/bin/bash

PORT=${PORT:-8080}
exec python3.13 -m gunicorn wsgi:app --bind 0.0.0.0:$PORT

