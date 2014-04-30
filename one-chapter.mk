MDS=$(wildcard *.md)
PDFS=$(MDS:.md=.pdf)

all: $(PDFS)

%.pdf: %.md ../../templates/book.template ../order.txt
	$(info Making $@: $^)
	pandoc $< -o $@ \
	--template=../../templates/book.template \
	--chapters \
	--variable chapter=$(shell grep -n $< ../order.txt | cut -d: -f1) \
	--latex-engine=lualatex
