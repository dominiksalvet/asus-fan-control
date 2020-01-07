#!/bin/bash

#-------------------------------------------------------------------------------
# Copyright 2018-2020 Dominik Salvet
# github.com/dominiksalvet/asus-fan-control
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
    local WORDS='-get-temps -set-default-temps -set-temps: -help -about -version' &&

    # generate hint from available asus-fan-control's action
    mapfile -t COMPREPLY < <(compgen -W "$WORDS" -- "${COMP_WORDS[COMP_CWORD]}") &&

    # if there is only '-set-temps:', do not print an extra space
    if [ "${#COMPREPLY[@]}" -eq 1 ] && [ "${COMPREPLY[0]}" = '-set-temps:' ]; then
        compopt -o nospace
    fi
}

#-------------------------------------------------------------------------------
# APPLY COMPLETION
#-------------------------------------------------------------------------------

# register the asus-fan-control completion to the current shell environment
complete -F _asus-fan-control asus-fan-control
