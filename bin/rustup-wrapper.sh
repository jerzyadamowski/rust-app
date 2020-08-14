#!/bin/bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y "$@"
echo "PATH contains $PATH"
export PATH="$HOME/.cargo/bin:$PATH"
echo "Exported PATH contains $PATH"
