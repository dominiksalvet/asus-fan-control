#!/bin/bash

#-------------------------------------------------------------------------------
# Copyright 2018-2019 Dominik Salvet
# github.com/dominiksalvet/asus-fan-control
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# APPLY TAB COMPLETION
#-------------------------------------------------------------------------------

# DESCRIPTION:
#   Prepare a hint consisting of words that can be used from the current part of
#   word.
_asus-fan-control() {
    local WORDS='-get-temps -set-default-temps -set-temps: -help -about -version' &&

    # generate hint from available asus-fan-control's action
    mapfile -t COMPREPLY < <(compgen -W "$WORDS" -- "${COMP_WORDS[COMP_CWORD]}") &&

    # if there is only '-set-temps:', do not print an extra space
    if [ "${#COMPREPLY[@]}" -eq 1 ] && [ "${COMPREPLY[0]}" = '-set-temps:' ]; then
        compopt -o nospace
    fi
}

# assign a function to be called when TAB complete is required when asus-fan-control is used
complete -F _asus-fan-control asus-fan-control
