#!/bin/zsh

#Les fichiers à sauvergarder
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles" ];then
    echo "Création du dosser mes_projets/dotfiles !";
    mkdir ${HOME}/Documents/mes_projets/dotfiles/
else
	echo "Le dossier de dotfiles existe dejà !"
fi

cp ${HOME}/.zshrc ${HOME}/Documents/mes_projets/dotfiles/zshrc &
cp ${HOME}/.zsh_history ${HOME}/Documents/mes_projets/dotfiles/zsh-history &
cp ${HOME}/.vimrc ${HOME}/Documents/mes_projets/dotfiles/vimrc &

# Copie du dossier custom de Oh-my-zsh"
if [ ! -d "${HOME}/Documents/mes_projets/dotfiles/custom" ];then
	cp -r ${HOME}/.oh-my-zsh/custom/ ${HOME}/Documents/mes_projets/dotfiles/ &
else
	echo "Le Dossier Custom existe déjà"
fi

echo "Sauvegarde Treminée!!"
