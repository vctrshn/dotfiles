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

export PATH="./node_modules/.bin:$HOME/.nvm/*/bin:/usr/local/bin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/Cellar:/home/vshen/.cargo/bin"

export EDITOR='vim'
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

export TERM='xterm-kitty'

# alias vim to neovim
alias vim='nvim'

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
alias etu='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ew='vim ~/.config/work.zsh'

# reload this config file
alias so='source ~/.zshrc'

# alias for sudo
alias oops='sudo $(fc -ln -1)'

# FZF Config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="fd --type f --hidden --no-ignore --exclude '.git/**' --exclude '.hg/**' --exclude '**/*.ico' --exclude '**/*.png' --exclude '**/*.jpg' --exclude '**/*.jpeg' --exclude '**/*.zip' --exclude '**/*.tar.gz' --exclude '**/*.gif' --exclude '**/*.avi' --exclude '**/*.mp4' --exclude '**/*.mp3' --exclude '**/*.ogg' --exclude '**/*.tgz' --exclude '**/*.gz' --exclude '**/*.ctg.z' --exclude '**/*.bcmap' --exclude '**/*.pyc'"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS='
  -m -i
  --bind ctrl-d:page-down,ctrl-u:page-up
  --preview "[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (bat --theme TwoDark --style "numbers,changes" --color=always {} ||
                  head -500 {}) 2> /dev/null"
  --preview-window right:35%
'
# git with FZF aliases
alias add='git add $(git diff --name-only HEAD | fzf-tmux --tac -d 15)'
alias checkout='git checkout $(git branch | fzf-tmux --tac -d 15)'
alias gdiff='git diff $(git diff --name-only HEAD | fzf-tmux --tac -d 15)'
alias show='git show --pretty="format:" $(git show --pretty="format:" --name-only | fzf-tmux --tac -d 15)'
alias undo='git checkout -- $(git diff --name-only HEAD | fzf-tmux --tac -d 15)'

# source work specific config
if [[ -s "$HOME/.config/work.zsh" ]]; then
  source ~/.config/work.zsh
fi
