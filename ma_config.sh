#!/bin/zsh

#Les fichiers à sauvergarder
if [ ! -d "/home/jeanlouis/Documents/ma_config" ];then
    echo "Création du dosser ma_config !";
    mkdir /home/jeanlouis/Documents/ma_config/
else
	echo "Le dossier de ma_config existe dejà !"
fi

cp /home/jeanlouis/.zshrc /home/jeanlouis/Documents/ma_config/zshrc &
cp /home/jeanlouis/.zsh_history /home/jeanlouis/Documents/ma_config/zsh-history &
cp /home/jeanlouis/.vimrc /home/jeanlouis/Documents/ma_config/vimrc &

# Copie du dossier custom de Oh-my-zsh"
if [ ! -d "/home/jeanlouis/Documents/ma_config/custom" ];then
	cp -r /home/jeanlouis/.oh-my-zsh/custom/ /home/jeanlouis/Documents/ma_config/ &
else
	echo "Le Dossier Custom existe déjà"
fi

echo "Sauvegarde Treminée!!"
