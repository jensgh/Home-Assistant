#!/bin/bash
echo "Pulling latest changes from github .."

a=$(git pull 2>&1)
echo "$a"

# https://github.com/Tommatheussen/Home-Assistant-Configuration/tree/master/to-migrate/bin