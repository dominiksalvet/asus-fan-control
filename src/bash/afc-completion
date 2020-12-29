#!/bin/bash

#-------------------------------------------------------------------------------
# Copyright 2018-2020 Dominik Salvet
# https://github.com/dominiksalvet/asus-fan-control
#-------------------------------------------------------------------------------
# DESCRIPTION:
#   This file implements a prompting tab completion for asus-fan-control in Bash
#   shells. It is expected to be sourced.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# COMPLETION GENERATOR
#-------------------------------------------------------------------------------

# DESCRIPTION:
#   Prepares the next word hint based on the current part of the word.
_asus-fan-control() {
    local -r FIRST_WORDS='set-temps get-temps model-info help about' &&
    local first_word="${COMP_WORDS[1]}" &&
    local cur_word="${COMP_WORDS[COMP_CWORD]}" && # the current part of the word

    if [ "$COMP_CWORD" -eq 1 ]; then # commands
        # prepare hints based on given arguments
        mapfile -t COMPREPLY < <(compgen -W "$FIRST_WORDS" -- "$cur_word")
    # provide hint for default temperatures while setting temperatures
    elif [ "$COMP_CWORD" -eq 2 ] && [ "$first_word" = set-temps ]; then
        mapfile -t COMPREPLY < <(compgen -W default -- "$cur_word")
    fi
}

#-------------------------------------------------------------------------------
# APPLY COMPLETION
#-------------------------------------------------------------------------------

# register the asus-fan-control completion to the current shell environment
complete -F _asus-fan-control asus-fan-control
