#!/bin/sh
# Deal with MacOS nonsense
sudo xcode-select --install

# Rename remote repo to use ssh
git remote set-url origin git@github.com:vctrshn/dotfiles.git

# Set up directories
mkdir "$HOME/.config"
mkdir "$HOME/.config/fonts"
mkdir "$HOME/.config/nvim"

# Link in config files
ln -s "$PWD/.bash_profile" "$HOME/.bash_profile"
ln -s "$PWD/.bashrc" "$HOME/.bashrc"
ln -s "$PWD/.gitignore_global" "$HOME/.gitignore_global"
ln -s "$PWD/.vimrc" "$HOME/.vimrc"
ln -s "$PWD/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"
ln -s "$PWD/.zlogin" "$HOME/.zlogin"
ln -s "$PWD/.zlogout" "$HOME/.zlogout"
ln -s "$PWD/.zpreztorc" "$HOME/.zpreztorc"
ln -s "$PWD/.zprofile" "$HOME/.zprofile"
ln -s "$PWD/.zshenv" "$HOME/.zshenv"
ln -s "$PWD/themes/prompt_superlinh_setup" "${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/functions/prompt_superlinh_setup"
ln -s "$PWD/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$PWD/.agignore" "$HOME/.agignore"

# Switch to zsh and use prezto
# https://github.com/sorin-ionescu/prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
chsh -s /bin/zsh

# Make sure node is correct, and install nvm
# https://github.com/creationix/nvm#install-script
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
) && . "$NVM_DIR/nvm.sh"

source $HOME/.zshrc
nvm install stable
nvm use stable

#---------------------------------HOMEBREW------------------------------------
# Install Homebrew, and homebrew things
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown -R $(whoami) /usr/local/Cellar

# 1) git
# https://git-scm.com/book/en/v1/Getting-Started-Installing-Git
brew install git
git config --global core.excludesfile "$HOME/.gitignore_global"

# 2) tmux
brew install tmux

# 3) ctags
brew install ctags

# 4) fzf
# https://github.com/junegunn/fzf
brew install fzf
/usr/local/opt/fzf/install

# 5) ag
# https://github.com/ggreer/the_silver_searcher
brew install the_silver_searcher

# 6) rg
# https://github.com/BurntSushi/ripgrep
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git
brew install burntsushi/ripgrep/ripgrep-bin

# 7) python3/pip3
brew install python3

# 8) neovim
# https://github.com/neovim/homebrew-neovim/blob/master/README.md
# https://github.com/neovim/homebrew-neovim/issues/149
brew install neovim --env=std
sudo pip3 install --upgrade neovim

# 9) vim
brew install vim --with-python3

# 10) reattach-to-user-namespace
# Needed for tmux stuff: https://github.com/tmux-plugins/tmux-yank
brew install reattach-to-user-namespace

#---------------------------------BREW CASK------------------------------------
brew cask install google-chrome
brew cask install firefox
brew cask install atom
brew cask install iterm2
brew cask install alfred
brew cask install sublime-text
brew cask install slack

# 1) Amethyst
# https://github.com/ianyh/Amethyst
brew cask install amethyst

#-----------------------------------NPM---------------------------------------
npm install -g eslint
npm install -g tern
npm install -g prettier

#-----------------------------------Ruby----------------------------------------
sudo gem install coderay

#-----------------------------------TMUX---------------------------------------
# 1) Get tpm
# https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"

#----------------------------------Atom---------------------------------------
# 1) Link in config files
ln -s "$PWD/atom/config.cson" "$HOME/.atom/config.cson"
ln -s "$PWD/atom/keymap.cson" "$HOME/.atom/keymap.cson"

# 2) Install all Atom packages
apm install --packages-file ./atom/package-list.txt

#-------------------------------VIM/NEOVIM------------------------------------
# 9) Get vim-plug
# https://github.com/junegunn/vim-plug
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugUpgrade +PlugInstall +PlugUpdate

#-------------------------------Fix fonts--------------------------------------
git clone https://github.com/powerline/fonts "$HOME/.config/fonts"
"$HOME/.config/fonts/install.sh"
