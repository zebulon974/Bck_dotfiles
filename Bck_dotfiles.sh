#!/bin/zsh

# Vérification de la présence du dossier Dotfilkes
if [ ! -d "${HOME}/Projets/dotfiles" ];then
    echo "Création du dossier Dotfiles.";
    mkdir ${HOME}/Projets/dotfiles/
else
	echo "Le dossier dotfiles existe,"
fi

# Vérification du dossier de Configuration Terminator
if [ ! -d "${HOME}/Projets/dotfiles/conf_terminator" ];then
    echo "Création du dossier conf-terminator";
    mkdir ${HOME}/Projets/dotfiles/conf_terminator/
else
    echo "le dossier de configuration Terminator existe,"
fi

# Vérification du dossier custom de Oh-my-zsh"
if [ ! -d "${HOME}/Projets/dotfiles/custom_oh_my_zsh" ];then
    echo "Création du dossier custom de Oh My ZSH";
    mkdir ${HOME}/Projets/dotfiles/custom_oh_my_zsh/
else
	echo "Le Dossier Custom Oh My ZSH existe, copie des fichiers en cours..."
fi

sleep 3

# Copie des fichiers
cp -vu ${HOME}/.zshrc ${HOME}/Projets/dotfiles/zshrc
cp -vu ${HOME}/.zsh_history ${HOME}/Projets/dotfiles/zsh-history
cp -vu ${HOME}/.vimrc ${HOME}/Projets/dotfiles/vimrc
cp -rvu ${HOME}/.config/terminator ${HOME}/Projets/dotfiles/conf_terminator
cp -rvu ${HOME}/.oh-my-zsh/custom/ ${HOME}/Projets/dotfiles/custom_oh_my_zsh

sleep 3

echo "Sauvegarde Terminée!!!"
