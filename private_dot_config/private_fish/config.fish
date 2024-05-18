if status is-interactive
    # Commands to run in interactive sessions can go here
end

### XDG Base Directory Specification ###
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_STATE_HOME "$HOME/.local/state"
set -x XDG_CACHE_HOME "$HOME/.cache"

set -x AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME/aws/credentials"
set -x AWS_CONFIG_FILE "$XDG_CONFIG_HOME/aws/config"
set -x HISTFILE "$XDG_STATE_HOME/bash/history"
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

### Environment Variables
set -x EDITOR nvim
set -x BAT_THEME tokyonight_night

### Aliases
alias pacsu="sudo pacman -Su"
alias pacsyu="sudo pacman -Syu"
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacss="pacman -Ss"

alias yaysua="yay -Sua"
alias yaysyua="yay -Syua"
alias yaysa="yay -Sa"
alias yayr="yay -R"
alias yayss="yay -Ssa"

alias chezadd="chezmoi add"
alias chezedit="chezmoi edit"
alias chezdiff="chezmoi diff"
alias chezapply="chezmoi -v apply"

alias v="nvim"
alias sv="sudo nvim"

alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

alias tobash="sudo chsh $USER -s /bin/bash && echo 'Log out and log back in for change to take effect.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Log out and log back in for change to take effect.'"

alias nvidia-settings="nvidia-settings --config='$XDG_CONFIG_HOME/nvidia/settings/.nvidia-settings-rc'" 
alias cat="bat"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --group-directories-first --no-permissions --all"

alias rc="source ~/.config/fish/config.fish"

### Initialize Starship and Zoxide
starship init fish | source
zoxide init fish | source
