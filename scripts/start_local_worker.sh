#!/bin/bash

# Reload celery on file changes.
poetry run watchfiles \
    --target-type command \
    --filter python \
    'celery --worker src -A sample.celery:celery_app worker'

