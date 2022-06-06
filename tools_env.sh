#!bin/bash


current_path=$(dirname $(readlink -f ${BASH_SOURCE[0]}))


## tldr alias
if [ -z "$PYTHONUSERBAE" ]; then
    alias tldr="~/.local/bin/tldr"
else
    alias tldr="${PYTHONUSERBASE}/bin/tldr"
fi


## fzf path
export PATH="${PATH}:${current_path}/terminal_tools/fzf/bin"
[[ $- == *i* ]] && source "${current_path}/terminal_tools/fzf/shell/completion.bash" 2> /dev/null
source "${current_path}/terminal_tools/fzf/shell/key-bindings.bash"



## direnv path
export PATH=$PATH:${current_path}/terminal_tools/bin
eval "$(direnv hook bash)"

