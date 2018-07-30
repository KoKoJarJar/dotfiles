#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
FOLDERS=""
for i in $(find ~ -name bin); do
    FOLDERS=$i:$FOLDERS
done
PATH=$FOLDERS$PATH
export EDITOR='nvim'
alias ls='ls --color=auto'
alias vi='nvim'
alias vim='nvim'
alias rm='rm -i'
alias megadf='megadf --gb'
alias g++='g++ -Wall -Werror -Wpedantic -g -std=c++17'
alias clang-format='/usr/bin/clang-format'
