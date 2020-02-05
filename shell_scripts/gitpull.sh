#!/bin/bash
echo "Pulling latest changes from github .."

gitpull=$(git pull 2>&1)
echo "$gitpull"

if [ gitpull | grep "Fast-Forward" -n]; then

    check_config=$(hass --script check_config -i -c /config/ | grep "Successful config (all)" 2>&1)
    echo "$check_config"

    if [ check_config == "Successful config (all)" ]; then
        echo "Config check successfull !"
    fi

fi

# https://github.com/Tommatheussen/Home-Assistant-Configuration/tree/master/to-migrate/bin
