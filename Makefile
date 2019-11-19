PACKAGES ?= \
	bspwm \
	git \
	misc \
	sxhkd \
	tmux \
	vim \
	xorg \
	zsh

PACKAGES_DIR ?= packages
DIST_DIR ?= dist

build: $(DIST_DIR) $(PACKAGES:%=config/%)
	@echo $(+F)

$(DIST_DIR):
	@mkdir $(DIST_DIR) -p
	@mkdir $(DIST_DIR)/.config -p

config/%: $(PACKAGES_DIR)/%
	@stow $(@F) \
		-d $(PACKAGES_DIR) \
		-t $(DIST_DIR)

# Install

install: $(DIST_DIR)
	@stow -R $<

# Uninstall

uninstall: $(DOTFILES)
	@stow -D $^
