#!/bin/bash
# (cd material-ui && git checkout v1-beta && git pull) || (git clone git@github.com:callemall/material-ui.git material-ui && cd material-ui && git checkout v1-beta)
GEN=node_modules/.bin/purescript-react-wrapper-gen

echo "Generating..."
# grep < node_modules/material-ui/index.es.js "default as .*} from './[A-Z].*';" | sed -E "s/^.*from '\.\/(.*)'.*$/material-ui\/src\/\1.js/" 
    # | xargs $GEN --base material-ui/src -m MaterialUI --prefix material-ui/ -o src --default
# grep < node_modules/material-ui/index.es.js "{} from './[A-Z][^/]*';" | sed -E "s/^.*from '\.\/(.*)'.*$/material-ui\/src\/\1\/\1.js/" \
#     | xargs $GEN --base material-ui/src -m MaterialUI --prefix material-ui/ -o src --default

pulp run --src-path gen -m Gen.Main | xargs $GEN --base material-ui/src -m MaterialUI --prefix material-ui/ -o src --default

# grep < node_modules/material-ui/index.es.js "[,}] \([A-Z][A-Za-z]* \).* from './[A-Z].*';" | \
#     perl -pe "s/\([,{] \(?:[A-Z][A-Za-z]*\)+\) } from '\.\/(.*)'.*$/TEST/"
    # | sed -E "s/^.*from '\.\/(.*)'.*$/material-ui\/src\/\1.js/g" 
