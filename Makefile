all:
	pdflatex primeraclase.tex
	pdflatex segundaclase.tex
	pdflatex terceraclase.tex
	pdflatex cuartaclase.tex
	pdflatex quintaclase.tex

clean:
	rm *pdf *aux *log *.nav *.out *.toc *.snm
