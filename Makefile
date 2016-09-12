INSTALL_DIR:=$(HOME)
SOURCE_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

build: link-bash link-config

link-bash:
	ln -si $(SOURCE_DIR)/bash_profile $(INSTALL_DIR)/.bash_profile
	ln -si $(SOURCE_DIR)/bashrc $(INSTALL_DIR)/.bashrc

link-config:
	mkdir -p $(INSTALL_DIR)/.config/
	ln -si $(SOURCE_DIR)/config/* $(INSTALL_DIR)/.config/

help:
	@echo "\n"
	@echo "yep..."

