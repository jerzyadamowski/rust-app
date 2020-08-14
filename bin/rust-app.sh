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
    printf "${GREEN}rust-app - application to install or execute rust tool with npx tool${NC}"
    printf "${RED}invalid use${NC}"
    printf "Usage: npx rust-app ${GREEN}[command]${NC}"
    printf ""
    printf "[command]: "
    printf "      ${GREEN}rustup-init${NC} - run rust installer"
    printf "      ${GREEN}rust-tool${NC} in ${GREEN}[cargo|cargo-fmt|clippy-driver|rustc|rustfmt|...]${NC}"
    printf "Script takes in account all parameters eg. npx rust-app cargo --help : shows the help page"
}

case ${@:1:1} in
	rustup-init)
		do_rustup_init "${@:2:$#}";;
	"")
		do_show_help ;;
	*)
		do_any_cmd $@;;
esac



