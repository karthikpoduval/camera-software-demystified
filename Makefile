all:pdflatex view

pdflatex:	
	pdflatex main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex main x 2

clean:
	rm -rf  *.aux *.bcf *.blg *.ilg *.log *.pdf *.ptc *.run.xml *.toc

view: pdflatex
	evince main.pdf
