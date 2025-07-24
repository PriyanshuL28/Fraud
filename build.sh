#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --no-input

# Apply migrations
python manage.py migrate

# Create superuser (optional - remove in production)
# python manage.py createsuperuser --no-input --username admin --email admin@example.com || true