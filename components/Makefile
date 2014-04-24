PDFS=diagram.pdf

all: $(PDFS)

diagram.pdf: diagram.tikz diagram.template

%.pdf: %.md
	pandoc $< -o $@ \
	--template=diagram.template \
	--latex-engine=lualatex
