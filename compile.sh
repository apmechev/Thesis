#!/bin/bash

git submodule update --remote

rm thesis/thesis.*
rm thesis/*aux

pdflatex  -output-directory=thesis/  thesis.tex 



cd thesis
#cp ../thesis.tex ./ 
biber thesis 
cd ../


pdflatex  -output-directory=thesis/  thesis.tex
makeglossaries -d thesis/ thesis

pdflatex  -output-directory=thesis/  thesis.tex

#mv thesis.preamble.aux thesis
