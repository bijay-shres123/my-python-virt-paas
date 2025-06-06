#!/bin/bash

# Set fallback port
PORT=${PORT:-7979}

# Kill old gunicorn processes
pkill -f "gunicorn wsgi:app"

# Small delay to allow cleanup
sleep 1

# Start new gunicorn process
exec python3.13 -m gunicorn wsgi:app --bind 0.0.0.0:$PORT

