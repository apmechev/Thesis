#!/bin/bash

pdflatex  -output-directory=thesis/  thesis.tex

cd thesis
#cp ../thesis.tex ./ 
bibtex thesis 
cd ../
pdflatex  -output-directory=thesis/  thesis.tex
pdflatex  -output-directory=thesis/  thesis.tex

#mv thesis.preamble.aux thesis/

