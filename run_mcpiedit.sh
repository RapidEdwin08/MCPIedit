#!/bin/bash
# https://github.com/RapidEdwin08/

if [[ ! -d $HOME/.minecraft-pi ]]; then mkdir -p $HOME/.minecraft-pi; fi
pushd $HOME/.minecraft-pi

# Run mcpiedit in isolated virtual environment
source envmcpiedit/bin/activate
$HOME/.mcpiedit/mcpiedit
deactivate

popd
