#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT prd_fields_49405.wsgi:application
