#!/bin/bash

poetry run manage.py migrate --no-input
poetry run manage.py collectstatic --no-input
poetry run \
    uvicorn --host 0.0.0.0 --port 8000 \
    --app-dir cch_django_template.asgi:application \
    --reload \
    --loop uvloop \
    --http httptools

