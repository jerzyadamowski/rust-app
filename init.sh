curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
source ~/.profile
# grep -qxF 'include "/configs/projectname.conf"' foo.bar || echo 'include "/configs/projectname.conf"' >> foo.bar
