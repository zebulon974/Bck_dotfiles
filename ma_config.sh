#!/bin/zsh

#Les fichiers à sauvergarder
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles" ];then
    echo "Création du dossier mes_projets/dotfiles !";
    mkdir ${HOME}/Documents/mes_projets/dotfiles/
else
	echo "Le dossier dotfiles existe,"
fi

#verification du dossier de conf Terminator
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles/conf_terminator" ];then
    echo "Création du dossier conf-terminator"
    mkdir ${HOME}/Documents/mes_projets/dotfiles/conf_terminator/
else
    echo "le dossier de conf terminator existe déjà, copie des fichiers en cours..."
fi

# Vérification du dossier custom de Oh-my-zsh"
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles/custom_oh_my_zsh" ];then
    echo "Création du dossier custom de Oh My ZSH"
    mkdir ${HOME}/Documents/mes_projets/dotfiles/custom_oh_my_zsh/
else
	echo "Le Dossier Custom Oh My ZSH existe, copie des fichiers en cours..."
fi

# Copie des fichiers
cp -v -u ${HOME}/.zshrc ${HOME}/Documents/mes_projets/dotfiles/zshrc
cp -v -u ${HOME}/.zsh_history ${HOME}/Documents/mes_projets/dotfiles/zsh-history
cp -v -u ${HOME}/.vimrc ${HOME}/Documents/mes_projets/dotfiles/vimrc
cp -v -u -r ${HOME}/.config/terminator ${HOME}/Documents/mes_projets/dotfiles/conf_terminator
cp -r -v -u ${HOME}/.oh-my-zsh/custom/ ${HOME}/Documents/mes_projets/dotfiles/custom_oh_my_zsh

sleep 5
echo "Sauvegarde Terminée!!"
