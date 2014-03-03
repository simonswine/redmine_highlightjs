#!/bin/bash

# Download sources of highligth
rm -rf ./highlightjs_src
mkdir ./highlightjs_src
wget https://github.com/isagalaev/highlight.js/archive/8.0.tar.gz -O - | tar xvfz - -C ./highlightjs_src --strip-components=1

# Copy styles
rsync -av highlightjs_src/src/styles/ ./assets/stylesheets/highlightjs/

# Build highlight.js
python3 ./highlightjs_src/tools/build.py

# Copy highlight.js
cp highlightjs_src/build/highlight.pack.js assets/javascripts/highlight.pack.js

