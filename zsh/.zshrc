source "${HOME}/.zgen/zgen.zsh"

bindkey '^R' .history-incremental-search-backward
bindkey '^S' .history-incremental-search-forward
# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen load miekg/lean
  # zgen load ~/.zgen/marlonrichert/zsh-autocomplete 
  # zgen load ~/.zgen/zsh-users/zsh-autosuggestions-master
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi

# source ~/.zgen/marlonrichert/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zgen/zsh-users/zsh-autosuggestions-master/zsh-autosuggestions.plugin.zsh
eval "$(zoxide init zsh)"

# The following lines were added by compinstall

# zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
# zstyle ':completion:*' max-errors 2 numeric
# zstyle :compinstall filename '/home/lev-arch/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall
source <(fzf --zsh)
eval "$(zoxide init zsh --cmd cd)"
