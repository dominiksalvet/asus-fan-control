#-------------------------------------------------------------------------------
# Copyright 2018 Dominik Salvet
# SPDX-License-Identifier: MIT
# https://gitlab.com/dominiksalvet/ux430ua-fan-control
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# DEFINITIONS
#-------------------------------------------------------------------------------

# environment configuration
SHELL := /bin/sh
ECHO := echo
SED := sed
COLUMN := column

# directory definitions
MAKE_DIR := make
BUILD_DIR := build

#-------------------------------------------------------------------------------
# HELP GENERATOR
#-------------------------------------------------------------------------------

# sed script - get automatically target descriptions from a makefile
define GET_TARGET_DESCRIPTIONS
/^[^:=#[:blank:]]+[[:blank:]]*:[^:=#]*#/!d
s/[:=#[:blank:]][^#]*//
s/[[:blank:]#]*#[[:blank:]#]*/#/g
s/^/  /
endef
export GET_TARGET_DESCRIPTIONS

# shows generated help of a given makefile from it's comments
define show_generated_help
	@$(ECHO) 'USAGE: make [TARGET]...'
	@$(ECHO)
	@$(ECHO) 'TARGET:'
	@$(SED) -E -e "$$GET_TARGET_DESCRIPTIONS" $(1) | $(COLUMN) -t -s '#'
endef

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

.PHONY: all install uninstall install-deps install-project help

# there is no building required, so the default target references to the help target
all: help

install: install-deps install-project # install the entire project

uninstall: # uninstall the project
	./$(MAKE_DIR)/uninstall

install-deps: # install only dependencies of the project
	./$(MAKE_DIR)/install-deps

install-project: # install only the project
	./$(MAKE_DIR)/install '$(BUILD_DIR)'

help: # default, show this help
	$(call show_generated_help,makefile)
