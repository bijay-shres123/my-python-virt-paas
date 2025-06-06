#!/bin/bash

PORT=${PORT:-7979}
exec python3.13 -m gunicorn wsgi:app --bind 0.0.0.0:$PORT

