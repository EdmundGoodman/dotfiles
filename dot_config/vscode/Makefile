MAKEFLAGS += --warn-undefined-variables
SHELL := bash

VSCODE_CONFIG ?= ~/Library/Application\ Support/Code/User

.PHONY: copy
copy: copy_settings copy_keybindings copy_extensions

.PHONY: copy_settings
copy_settings:
	cp ${VSCODE_CONFIG}/settings.json settings_code.json
	cp ${VSCODE_CONFIG}/profiles/-2b52c80b/settings.json settings_writing.json

.PHONY: copy_keybindings
copy_keybindings:
	cp ${VSCODE_CONFIG}/keybindings.json ./

.PHONY: copy_extensions
copy_extensions:
	cp ${HOME}/.vscode/extensions/extensions.json ./
	cp ${VSCODE_CONFIG}/profiles/-2b52c80b/extensions.json extensions_writing.json
	cp ${VSCODE_CONFIG}/profiles/-bf5c52d/extensions.json extensions_web_dev.json
	cp ${VSCODE_CONFIG}/profiles/2798786e/extensions.json extensions_python.json
	cp ${VSCODE_CONFIG}/profiles/6f6f83be/extensions.json extensions_c_family.json

.PHONY: clean
clean:
	rm *.json

