# Add the local bin folder (e.g., single-command virtual environments) to $PATH.
set PATH $PATH ~/.local/bin

# Disable the greeting.
set fish_greeting

# Prompt before overwriting or removing a file.
alias cp "cp -i"
alias ln "ln -i"
alias mv "mv -i"
alias rm "rm -i"

# Create intermediate directories.
alias mkdir "mkdir -p"

