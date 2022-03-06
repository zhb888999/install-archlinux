# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mking/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mking/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mking/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/mking/.fzf/shell/key-bindings.bash"
