function build_prompt() {
  # https://misc.flogisoft.com/bash/tip_colors_and_formatting
  local GREEN="\[\e[38;5;10m\]"
  local RED="\[\e[38;5;1m\]"
  local BLUE="\[\e[38;5;12m\]"
  local PURPLE="\[\e[38;5;13m\]"
  local YELLOW="\[\e[38;5;3m\]"
  local RESET="\[\e[0m\]"

# Keeping unindented because it's whitespace-sensitive
PS1="\
[${RED}\${PIPESTATUS[@]/#0/${RESET}${GREEN}0${RED}}${RESET}] \
${BLUE}\u@\h:${PURPLE}\w${RESET}\n\
 "
}
build_prompt

set -o vi
# Better handling of bash history
# https://cdaddr.com/programming/keeping-bash-history-in-sync-on-disk-and-between-multiple-terminals/
shopt -s histappend
HISTSIZE=130000
HISTFILESIZE=-1
export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="history -a; history -n"

# Flow control is not my thing
# https://unix.stackexchange.com/questions/72086/ctrl-s-hang-terminal-emulator
stty -ixon

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
alias etu='vim ~/.tmux.conf'
alias ew='vim ~/.config/work.bash'

# reload this config file
alias so='source ~/.bashrc'

# alias for sudo
alias oops='sudo $(fc -ln -1)'

export EDITOR=nvim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND="fd --type f --hidden --no-ignore --exclude '.git/**' --exclude '.hg/**' --exclude '**/*.ico' --exclude '**/*.png' --exclude '**/*.jpg' --exclude '**/*.jpeg' --exclude '**/*.zip' --exclude '**/*.tar.gz' --exclude '**/*.gif' --exclude '**/*.avi' --exclude '**/*.mp4' --exclude '**/*.mp3' --exclude '**/*.ogg' --exclude '**/*.tgz' --exclude '**/*.gz' --exclude '**/*.ctg.z' --exclude '**/*.bcmap' --exclude '**/*.pyc'"
export FZF_DEFAULT_OPTS='
  -m -i
  --bind ctrl-d:page-down,ctrl-u:page-up
  --preview "[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (bat --theme TwoDark --style "numbers,changes" --color=always {} ||
                  head -500 {}) 2> /dev/null"
  --preview-window right:35%
'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND='rg --hidden --files --null --glob "!.git/**" --glob "!.hg/**" | xargs -0 dirname | uniq'

# source work specific config
if [[ -s "$HOME/.config/work.bash" ]]; then
  source ~/.config/work.bash
fi

export PATH="/opt/local/bin:/usr/local/bin:/Users/vshen/homebrew/bin:/Users/vshen/.brew/bin:/home/vshen/.cargo/bin:$PATH:${HOME}/.config/yarn/global/node_modules/.bin"
