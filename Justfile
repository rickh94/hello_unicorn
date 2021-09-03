up:
    docker compose up -d

watch-css:
    #!/usr/bin/env bash
    cd static_src
    nodemon -e html,py -w '../templates' -w '../**/templates' --exec npm -- run build:prod