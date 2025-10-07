#!/usr/bin/env zsh

function prompt_codespace_name() {
  [[ -n $CODESPACE_NAME ]] || return
  local name=${CODESPACE_NAME%-*}
  p10k segment -f 3 -b 0 -t "$name"
}

