#!/bin/bash
python3.13 -m gunicorn wsgi:app --bind 0.0.0.0:8080
