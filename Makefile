PACKAGES ?= \
	shell \
	terminal-multiplexer \
	text-editor \
	unsorted \
	x-compositor \
	x-display-server \
	x-dynamic-menu \
	x-hotkey-daemon \
	x-notification-daemon \
	x-status-bar \
	x-terminal-emulator \
	x-window-manager

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
