# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx git-flow brew fabric sublime django postgres screen golang pass docker lein)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Username
USERNAME="arturo.fernandez"

# Go lang. See also /etc/launchd.conf
export GOPATH=$HOME/dev/go-workspace
export GOROOT=/usr/local/opt/go/libexec

# Setting PATH
export PATH=/Users/$USERNAME/.rbenv/shims:/usr/local/share/npm/bin:/usr/local/share/python:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/$USERNAME/scripts/:$GOPATH/bin:$GOROOT/bin

# Front-end
alias grb='grunt build'

# Node
export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}

export EDITOR='vim'

#export PASSWORD_STORE_DIR="/Volumes/ArtuDrive/password-store/"
export PASSWORD_STORE_DIR="/Users/arturo.fernandez/password-store/"

alias clojure="java -cp ~/clojure-1.6.0/clojure-1.6.0.jar clojure.main"

alias em="emacsclient -t"

alias ssh="TERM=xterm-256color ssh"


# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
#BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"

BASE16_SHELL="$HOME/.config/base16-shell/base16-railscasts.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# boot2docker
#$(boot2docker shellinit)

# docker-machine
eval "$(docker-machine env dev)"

alias dstop="docker-compose -f dev.yml stop"
alias dstart="docker-compose -f dev.yml up -d"
alias dbuild="docker-compose -f dev.yml build"

alias dmachine="docker-machine"
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/arturo.fernandez/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1

# Activating virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
