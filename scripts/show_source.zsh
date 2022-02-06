#!/bin/zsh

if [[ $(cat ~/.alias_list | grep -E "^"$@"=") == *=function_* ]]; then
  cat $ZSHHOME/alias.d/$@.zsh
else
  cat ~/.alias_list | grep -E "^"$@"="
fi