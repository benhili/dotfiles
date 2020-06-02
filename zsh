path+=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH

# Node memory allocation
export NODE_OPTIONS=--max_old_space_size=4096

# TODO figure out wtf this is. Do I need it?
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Z
source /usr/local/etc/profile.d/z.sh

# Homebrew antigen directory
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Antigen packages
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle vi-mode
antigen bundle command-not-found
antigen bundle sindresorhus/pure
antigen bundle mafredri/zsh-async
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Pure prompt config
zstyle :prompt:pure:path color green
zstyle ':prompt:pure:prompt:*' color yellow

# λ in case the emoji gets obnoxious
PURE_PROMPT_SYMBOL="🌊"


# FD to escape vim insert mode
bindkey -M viins 'fd' vi-cmd-mode

# Required for Ranger
export EDITOR="nvim"

# TODO move these aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# TODO delete these when/if I stop working with serverless
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/hero/Dev/linktr.ee/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/hero/Dev/linktr.ee/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/hero/Dev/linktr.ee/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/hero/Dev/linktr.ee/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/hero/Dev/linktr.ee/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/hero/Dev/linktr.ee/node_modules/tabtab/.completions/slss.zsh



# 🤔
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
