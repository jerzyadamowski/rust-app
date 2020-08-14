#!/bin/bash
set -eE

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

do_rustup_init() {
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y "$@"
}

do_any_cmd() {
    source ~/.profile && "$@"
}

do_show_help() {
    printf "${GREEN}rust-app - application to install or execute rust tool with npx tool${NC}\n"
    printf "${RED}invalid use${NC}\n"
    printf "Usage: npx rust-app ${GREEN}[command]${NC}\n"
    printf "\n"
    printf "[command]: \n"
    printf "\t${GREEN}rustup-init${NC} - run rust installer\n"
    printf "\t${GREEN}rust-tool${NC} in ${GREEN}[cargo|cargo-fmt|clippy-driver|rustc|rustfmt|...]${NC}\n"
    printf "Script takes in account all parameters eg. npx rust-app cargo --help : shows the help page\n"
}

case ${@:1:1} in
	rustup-init)
		do_rustup_init "${@:2:$#}";;
	"")
		do_show_help ;;
	*)
		do_any_cmd $@;;
esac



