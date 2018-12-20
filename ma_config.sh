#!/bin/zsh

#Les fichiers à sauvergarder
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles" ];then
    echo "Création du dosser mes_projets/dotfiles !";
    mkdir ${HOME}/Documents/mes_projets/dotfiles/
else
	echo "Le dossier dotfiles existe dejà !"
fi

cp -v -u ${HOME}/.zshrc ${HOME}/Documents/mes_projets/dotfiles/zshrc
cp -v -u ${HOME}/.zsh_history ${HOME}/Documents/mes_projets/dotfiles/zsh-history
cp -v -u ${HOME}/.vimrc ${HOME}/Documents/mes_projets/dotfiles/vimrc
cp -v -u -r ${HOME}/.config/terminator ${HOME}/Documents/mes_projets/dotfiles/config/terminator

# Copie du dossier custom de Oh-my-zsh"
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles/custom" ];then
	cp -r -v -u ${HOME}/.oh-my-zsh/custom/ ${HOME}/Documents/mes_projets/dotfiles/
else
	echo "Le Dossier Custom existe déjà"
fi
# sleep 2
echo "Sauvegarde Terminée!!"
