illuminate.pdf:illuminate.tex
	xelatex $<
	bibtex $(basename $<)
	xelatex $<
	xelatex $<

clean:
	rm -f *.aux *.toc 
distclean:clean
	rm -f illuminate.pdf 

.PHONY: clean distclean
