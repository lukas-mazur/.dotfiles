#!/bin/bash

current_path=$(realpath .)

mkdir ~/terminal_tools
cd ~/terminal_tools

## Install tldr
pip3 install --user tldr;

## Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git
./fzf/install  --no-fish --no-zsh --completion --key-bindings --no-update-rc

## Install direnv
git clone https://github.com/direnv/direnv.git
mkdir bin
bin_path=~/terminal_tools/bin ./direnv/install.sh


echo """#!bin/bash

## tldr alias
if [ -z \"$PYTHONUSERBAE\" ]; then
    alias tldr=\"~/.local/bin/tldr\"
else
    alias tldr=\"\${PYTHONUSERBASE}/bin/tldr\"
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH=\$PATH:~/terminal_tools/bin

eval "\$\(direnv hook bash\)"
""" > tools_env.sh

echo "source ~/terminal_tools/tools_env.sh" >> ~/.bashrc

cd $current_path

