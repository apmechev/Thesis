#!/bin/bash

git submodule update --remote

rm thesis/thesis.*
rm thesis/*aux

pdflatex  -output-directory=thesis/  thesis.tex 

makeglossaries -d thesis/ thesis

cd thesis
#cp ../thesis.tex ./ 
biber thesis 
cd ../


pdflatex  -output-directory=thesis/  thesis.tex
pdflatex  -output-directory=thesis/  thesis.tex

#mv thesis.preamble.aux thesis
