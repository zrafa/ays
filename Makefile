all:
	pdflatex primeraclase.tex
	pdflatex segundaclase.tex
	pdflatex terceraclase.tex
	pdflatex cuartaclase.tex

clean:
	rm *pdf *aux *log *.nav *.out *.toc *.snm
