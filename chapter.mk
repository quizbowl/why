MDS=$(wildcard *.md)
PDFS=$(MDS:.md=.pdf)

all: $(PDFS)

%.pdf: %.md ../../templates/book.template
	$(info Making $@: $^)
	pandoc $< -o $@ \
	--template=../../templates/book.template \
	--chapters \
	--latex-engine=lualatex
