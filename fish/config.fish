# Add the local bin folder (e.g., single-command virtual environments) to $PATH.
set PATH $PATH ~/.local/bin

# Disable the greeting.
set fish_greeting

# install fundle if it's not present
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# load brew context (mac os)
if status --is-interactive; and command -v /opt/homebrew/bin/brew > /dev/null;
  eval (/opt/homebrew/bin/brew shellenv)
end


# Prompt before overwriting or removing a file.
alias cp "cp -i"
alias ln "ln -i"
alias mv "mv -i"
alias rm "rm -i"

# Create intermediate directories.
alias mkdir "mkdir -p"

fundle plugin "sentriz/fish-pipenv"

