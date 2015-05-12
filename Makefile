PROJECTS=$(patsubst %/,%,$(wildcard */))

.PHONY: all stow $(PROJECTS)
all: $(PROJECTS)
$(PROJECTS): % : stow
	stow -v $@

stow:
	which stow || brew install stow
