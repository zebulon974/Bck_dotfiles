#!/bin/zsh

#Les fichiers à sauvergarder
if [ ! -d "${HOME}/Documents/dotfiles" ];then
    echo "Création du dosser dotfiles !";
    mkdir ${HOME}/Documents/dotfiles/
else
	echo "Le dossier de dotfiles existe dejà !"
fi

cp ${HOME}/.zshrc ${HOME}/Documents/dotfiles/zshrc &
cp ${HOME}/.zsh_history ${HOME}/Documents/dotfiles/zsh-history &
cp ${HOME}/.vimrc ${HOME}/Documents/dotfiles/vimrc &

# Copie du dossier custom de Oh-my-zsh"
if [ ! -d "${HOME}/Documents/dotfiles/custom" ];then
	cp -r ${HOME}/.oh-my-zsh/custom/ ${HOME}/Documents/dotfiles/ &
else
	echo "Le Dossier Custom existe déjà"
fi

echo "Sauvegarde Treminée!!"
