.PHONY: clean

c_handbook.pdf: c_handbook.tex lulu.cls
	pdflatex c_handbook.tex
	pdflatex c_handbook.tex

clean:
	$(RM) *.aux *.dvi *.log *.toc