#!/bin/bash

# Exit immediately if a command fails
set -e

# Install dependencies using python's module
python -m pip install -r requirements.txt

# Run database migrations
python manage.py migrate --no-input

# Collect static files
python manage.py collectstatic --no-input

echo "Build finished!"