source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen load miekg/lean
  zgen load marlonrichert/zsh-autocomplete
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi

source ~/.zgen/marlonrichert/zsh-autocomplete-master

# The following lines were added by compinstall

# zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
# zstyle ':completion:*' max-errors 2 numeric
# zstyle :compinstall filename '/home/lev-arch/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall
