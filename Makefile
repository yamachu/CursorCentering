SCRIPT_DIR = $(HOME)/Library/Scripts
KARABINER_DIR = $(HOME)/.config/karabiner/assets/complex_modifications
SCRIPT = CursorCentering.scpt
KARABINER_CONFIG = CursorCenteringRunner.json
EDITOR ?= vim

all: install

install: dirs files

dirs:
	mkdir -p $(SCRIPT_DIR)
	mkdir -p $(KARABINER_DIR)

files:
	cp $(SCRIPT) $(SCRIPT_DIR)/
	cp $(KARABINER_CONFIG) $(KARABINER_DIR)/

edit_keyconf:
	$(EDITOR) $(KARABINER_DIR)/$(KARABINER_CONFIG)
