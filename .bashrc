set -o vi

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

alias vim='nvim'
# https://github.com/wincent/clipper
alias clip="nc localhost 8377"

# convenience aliases for editing configs
alias eb='vim ~/.bashrc'
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ew='vim ~/.config/work.bash'

# reload this config file
alias so='source ~/.bashrc'

# alias for sudo
alias oops='sudo $(fc -ln -1)'

export EDITOR=nvim
export HISTCONTROL=erasedups

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND="rg --files --hidden --no-ignore --glob '!.git/**' --glob '!.hg/**' --glob '!**/*.ico' --glob '!**/*.png' --glob '!**/*.jpg' --glob '!**/*.jpeg' --glob '!**/*.zip' --glob '!**/*.tar.gz' --glob '!**/*.gif' --glob '!**/*.avi' --glob '!**/*.mp4' --glob '!**/*.mp3' --glob '!**/*.ogg' --glob '!**/*.tgz' --glob '!**/*.gz' --glob '!**/*.ctg.z' --glob '!**/*.bcmap'"
export FZF_DEFAULT_OPTS='
  -m -i
  --bind ctrl-d:page-down,ctrl-u:page-up
  --preview "(highlight -O ansi -l {} || head -n 500 {}) 2> /dev/null"
  --preview-window right:35%
'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# source work specific config
if [[ -s "$HOME/.config/work.bash" ]]; then
  source ~/.config/work.bash
fi
