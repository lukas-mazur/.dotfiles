#!/bin/bash


currentscript="$0"

git_path=$(dirname ${currentscript})


mkdir ${git_path}/terminal_tools
cd ${git_path}/terminal_tools

## Install tldr
pip3 install --user tldr;

## Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git

## Install direnv
git clone https://github.com/direnv/direnv.git
mkdir bin
bin_path=${git_path}/terminal_tools/bin ./direnv/install.sh


echo "source ${git_path}/terminal_tools/tools_env.sh" >> ~/.bashrc

cd $current_path

