#!/bin/bash
set -e

# Install dependencies using the environment's Python
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
