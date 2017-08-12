#!/bin/bash
(cd material-ui && git pull) || git clone git@github.com:callemall/material-ui.git material-ui
GEN=node_modules/.bin/purescript-react-wrapper-gen
ls material-ui/src/*/* | egrep '/([A-Z][^/]*)/(\1)\.js' | xargs $GEN material-ui/src MaterialUI material-ui/ src
