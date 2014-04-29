ORDERS=prelims/order.txt chapters/order.txt
CHAPTERS:=$(shell cat $(ORDERS))
TEMPLATE=templates/book.template

all: book.pdf

book.pdf: */*/*.tikz $(ORDERS)

%.pdf: $(CHAPTERS) $(TEMPLATE)
	pandoc $(CHAPTERS) -o $@ \
	--template=$(TEMPLATE) \
	--chapters \
	--variable book \
	--latex-engine=lualatex
