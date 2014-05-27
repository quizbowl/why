MDS=$(wildcard *.md)
PDFS=$(MDS:.md=.pdf)

.PRECIOUS: %.tex %.figlist

all: $(PDFS)

%.tex: %.md ../../templates/book.template ../order.txt
	pandoc $< -o $@ \
	--template=../../templates/book.template \
	--chapters \
	--variable chapter=$(shell grep -n $< ../order.txt | cut -d: -f1) \
	--latex-engine=lualatex

%.figlist:
	lualatex $*.tex
	test -s $*.makefile && make -f $*.makefile

%.pdf: %.tex %.figlist
	lualatex $<
	make clean

clean:
	rm -f *.dep *.dpth *.aux *.log *.out

cleaner: clean
	rm -f *.figlist *.makefile *.md5 *.tex *.uhy

cleanest: cleaner
	rm -f *.pdf
