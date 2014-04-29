PDFS=tournament-director.pdf

all: $(PDFS)

%.pdf: %.md ../article.template
	pandoc $< -o $@ \
	--template=../article.template \
	--chapters \
	--latex-engine=lualatex
