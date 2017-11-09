#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export DEFAULT_USER="vshen"

# Command mode bindings
bindkey -v
export KEYTIMEOUT=1

# User configuration
export WORKON_HOME=~/Envs

if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]; then
  source "/usr/local/bin/virtualenvwrapper.sh"
fi

export PATH="./node_modules/.bin:$HOME/.nvm/*/bin:/usr/local/bin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/Cellar"

export EDITOR='vim'
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

export TERM='xterm-256color'

# alias vim to neovim
alias vim='nvim'
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# git aliases
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gpl='git pull'
alias gpu='git push'
alias gs='git status'
alias save='git add . && git commit --amend --reuse-message=HEAD'
alias amend='git commit --amend --reuse-message=HEAD'
alias rebase='git fetch origin && git rebase origin/master'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ew='vim ~/.config/work.zsh'

# reload this config file
alias so='source ~/.zshrc'

# alias for sudo
alias oops='sudo $(fc -ln -1)'

# Xdebug for sublime
export XDEBUG_CONFIG="idekey=sublime.xdebug"

# FZF Config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND='git ls-tree -r --name-only HEAD'
export FZF_DEFAULT_OPTS='
  -m -i
  --bind ctrl-d:page-down,ctrl-u:page-up
  --preview "(coderay {} || cat {}) 2> /dev/null"
'
# git with FZF aliases
alias add='git add $(git diff --name-only HEAD | fzf-tmux --tac -d 15)'
alias checkout='git checkout $(git branch | fzf-tmux --tac -d 15)'
alias gdiff='git diff $(git diff --name-only HEAD | fzf-tmux --tac -d 15)'
alias show='git show --pretty="format:" $(git show --pretty="format:" --name-only | fzf-tmux --tac -d 15)'
alias undo='git checkout -- $(git diff --name-only HEAD | fzf-tmux --tac -d 15)'

# tmuxinator aliases
alias etu='cd ~/.tmuxinator; vim'
alias dtop='tmux attach-session -d -t desktop'
alias ltop='tmux attach-session -d -t laptop'
alias desktop='mux desktop && dtop'
alias laptop='mux laptop && ltop'

# update all the things
alias update='
  brew upgrade fzf tmux neovim ripgrep-bin the_silver_searcher git ctags reattach-to-user-namespace python3 vim icdiff diff-so-fancy;
  nvm use latest && npm update -g eslint tern prettier;
  sudo gem update coderay;
  sudo pip3 install --upgrade neovim tmuxp;
'
alias updateAll='
  update;
  vim +PlugInstall +PlugUpgrade +PlugUpdate
'

# source work specific config
if [[ -s "$HOME/.config/work.zsh" ]]; then
  source ~/.config/work.zsh
fi
