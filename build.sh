#!/usr/bin/env bash

set -o errexit

cd static_src
npm install --only=prod
npm run build:prod
cd ..

poetry install

python manage.py collectstatic --no-input
python manage.py migrate