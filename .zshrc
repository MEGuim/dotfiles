# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/meguim/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

echo -ne "\e]1;$PWD\a"

# ENV
export EDITOR=nvim
export BROWSER=firefox
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# ALIASES

alias ez='nvim ~/.zshrc'
alias ei='nvim ~/.config/i3/config'
alias ep='nvim ~/.config/polybar/config'
alias ev='nvim ~/.config/nvim/init.vim'
alias et='nvim ~/.config/terminator/config'
alias cd='cdls'
alias la='ls -a'
alias vim='nvim'
alias please='eval "sudo $(fc -ln -1)"'
alias tides-of-numenera='wine /mnt/windows/Users/migue/Linux/Torment\ -\ Tides\ of\ Numenera/TidesOfNumenera.exe'
alias lyricfier='npm start --prefix ~/lyricfier & disown'
alias history="cat .histfile | grep"
