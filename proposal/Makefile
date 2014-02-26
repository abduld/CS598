
SOURCES=paper.tex \
	intro.tex overview.tex related.tex method.tex \
	schedule.tex conclusion.tex
	

FIGURES=
TARGET=paper
INKSCAPE=inkscape

all : $(TARGET).ps $(TARGET).pdf

$(TARGET).ps : $(TARGET).dvi
	dvips -t letter $<

$(TARGET).pdf : $(TARGET).dvi
	dvipdf -sPAPERSIZE=letter $<

$(TARGET).bbl : $(TARGET).bib
	latex $(TARGET).tex
	bibtex $(TARGET)

$(TARGET).dvi : $(SOURCES) $(FIGURES) $(TARGET).bbl
	latex $(TARGET).tex
	bibtex $(TARGET)
	latex $(TARGET).tex

figures/%.eps : figures/%.svg
	$(INKSCAPE) --export-eps=$@ --export-area-page $<

figures/%.eps : figures/%.gp figures/%.dat
	cd figures && gnuplot $(notdir $<)

