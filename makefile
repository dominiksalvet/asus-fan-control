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
INSTALL_DIR := /usr/local/bin

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

# displays generated help of a given makefile from it's comments
define display_generated_help
	@$(ECHO) 'Usage: make [TARGET]...'
	@$(ECHO)
	@$(ECHO) 'TARGET:'
	@$(SED) -E -e "$$GET_TARGET_DESCRIPTIONS" $(1) | $(COLUMN) -t -s '#'
endef

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

.PHONY: all install-deps install uninstall help about

# there is no building required, so the default target references to the help target
all: help

install-deps: # install dependencies of the program
	./$(MAKE_DIR)/install-deps

install: # install the program
	./$(MAKE_DIR)/install '$(BUILD_DIR)' '$(INSTALL_DIR)'

uninstall: # uninstall the program
	./$(MAKE_DIR)/uninstall

help: # default, display this help
	$(call display_generated_help,makefile)

about: # display information about this makefile
	@$(ECHO) "Installation manager for 'ux430ua-fan-control' program."
	@$(ECHO)
	@$(ECHO) 'Copyright 2018 Dominik Salvet'
	@$(ECHO) 'SPDX-License-Identifier: MIT'
	@$(ECHO) 'https://gitlab.com/dominiksalvet/ux430ua-fan-control'
