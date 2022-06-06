#!bin/bash

currentscript="$0"

current_path=$(dirname ${currentscript})

## tldr alias
if [ -z "$PYTHONUSERBAE" ]; then
    alias tldr="~/.local/bin/tldr"
else
    alias tldr="${PYTHONUSERBASE}/bin/tldr"
fi


# Setup fzf
# ---------
if [[ ! "$PATH" == *${current_path}/terminal_tools/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}${current_path}/terminal_tools/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${current_path}/terminal_tools/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "${current_path}/terminal_tools/fzf/shell/key-bindings.bash"




export PATH=$PATH:${current_path}/terminal_tools/bin

eval "$(direnv hook bash)"
