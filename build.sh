#!/bin/bash

# Exit immediately if a command fails
set -e

# Install project dependencies
python -m pip install -r requirements.txt

# Run database migrations
python manage.py migrate --no-input

# Collect static files
python manage.py collectstatic --no-inputv