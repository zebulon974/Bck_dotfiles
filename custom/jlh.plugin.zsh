## MES ALIAS
#
alias alais="alias"
alias la='ls -A'
alias lsd='ls -d */'
alias rmd="rm -rf"
alias nG='grep -v "^\s*$\|^\s*#.*"'
alias cls="clear"
alias hdd="dfc -t ext4"
alias ping='ping -c3'
alias update="sudo pacman -Su"
alias sa="alias |grep"
alias kc="killall conky"
alias edal='vim ~/.oh-my-zsh/custom/jlh.plugin.zsh'
alias runas="sudo thunar"
alias gparted="sudo gparted"
alias dl='youtube-dl'
alias vi='vim'
alias view='vim -R'
alias maj='pacman -Qu | wc -l'
alias sshsrv='ssh 192.168.0.25'
alias vimrc='vim ~/.vimrc'
alias root='sudo su'
alias xs='cd'
alias hosts='sh ~/.scripts/hosts.sh'
alias meteo='curl wttr.in/Biarritz'
alias srch="yay -Ss"

setopt correct

##MES FONCTIONS
#
#Créer un Dossier et s'y rendre
function mcd() {
	mkdir -p "$1" && cd "$1";
}

#Se deplacer dans un dossier et lister le contenu
function cdl() {
	cd $1
	ls
}

# Alias pour YAY
alias yaconf='yay -Pg'
alias yaupg='yay -Syu'
alias yasu='yay -Syu --noconfirm'
alias yain='yay -S'
alias yains='yay -U'
alias yare='yay -R'
alias yarem='yay -Rns'
alias yarep='yay -Si'
alias yareps='yay -Ss'
alias yaloc='yay -Qi'
alias yalocs='yay -Qs'
alias yalst='yay -Qe'
alias yaorph='yay -Qtd'
alias yainsd='yay -S --asdeps'
alias yamir='yay -Syy'
