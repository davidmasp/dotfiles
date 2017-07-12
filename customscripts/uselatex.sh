#!/bin/bash

pdflatex -synctex=1 -interaction=nonstopmode $1

bibname=${1/.tex/.aux}

echo $bibname

bibtex $bibname

pdflatex -synctex=1 -interaction=nonstopmode $1