#!/bin/bash


cd funLibrary


rails server &


sleep 2

# ouvrir le browser par defaut
xdg-open http://127.0.0.1:3000
