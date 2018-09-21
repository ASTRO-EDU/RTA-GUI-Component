#!/bin/bash

module load node-v8.11.3
# Style
cp -r ../components/plotly_components/styles/plotly-style.html styles/

# Component
cp ../components/plotly_components/light-curve.html components/

# Imports
cp -r ../components/plotly_components/imports ./


printf '\nExecute in a local shell:\nssh -N -L 8600:localhost:3000 cta@agilepipedev.iasfbo.inaf.it\n\n'

node index.js index-test-light-curve.html
