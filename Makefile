PROJECTS=$(patsubst %/,%,$(wildcard */))

.PHONY: all $(PROJECTS)
all: $(PROJECTS)
$(PROJECTS): % :
	stow -v $@
