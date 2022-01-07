#!/bin/bash

if [ -d 'reveal.js' ]
then
    pushd reveal.js
    git pull
    popd
else
    git clone https://github.com/hakimel/reveal.js.git 'reveal.js'
fi

pandoc --slide-level 2 -t revealjs -s talk.md -o talk.html
