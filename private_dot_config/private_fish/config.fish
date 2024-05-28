fish_config theme choose dracula

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
set -x CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"

### Environment Variables
set -x EDITOR nvim
set -x BAT_THEME Dracula
set -x GTK_THEME Adwaita-dark
set -x MUSIC_DIR "$HOME/Music/"

### Aliases

alias pyenv="source /usr/bin/python_venv/bin/activate.fish"
alias mp="music_player"
alias yt="yt_audio"
alias cv="audio_converter"

alias pacsyu="sudo pacman -Syu"
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacss="pacman -Ss"

alias parsyu="paru -Syu"
alias pars="paru -S"
alias parr="paru -R"
alias parss="paru -Ss"

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

alias grep='grep --color=auto'
alias cat="bat"
alias ls="eza --color=always --long --git --icons=always --no-time --no-user --group-directories-first --no-permissions --all"

alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

alias rc="source ~/.config/fish/config.fish"

### Initialize Starship and Zoxide
starship init fish | source
zoxide init fish | source

# Created by `pipx` on 2024-05-23 15:38:55
set PATH $PATH /home/nick/.local/bin
