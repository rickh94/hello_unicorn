#!/usr/bin/env bash

set -o errexit

cd static_src
npm install --only=prod
npm run build:prod
cd ..

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate