
SOURCES=paper.tex \
	intro.tex overview.tex related.tex method.tex \
	schedule.tex conclusion.tex
	

FIGURES=
TARGET=paper
INKSCAPE=inkscape

all : $(TARGET).pdf

$(TARGET).pdf : $(TARGET).bib
	pdflatex $(TARGET).tex

$(TARGET).bib :
	pdflatex $(TARGET).tex
	bibtex $(TARGET)

figures/%.eps : figures/%.svg
	$(INKSCAPE) --export-eps=$@ --export-area-page $<

figures/%.eps : figures/%.gp figures/%.dat
	cd figures && gnuplot $(notdir $<)

clean:
	rm -fr *pdf *bbl *dvi

