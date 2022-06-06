#!/bin/bash

git_path=$(dirname ${currentscript})

pip3 uninstall -y tldr

sed -i "s|source ${git_path}/terminal_tools/tools_env.sh||g" ~/.bashrc

