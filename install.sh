#TODO Install git if required;


#TODO Install python if not installed


#install tmux if not installed


git clone git@github.com:JoshuaJWilborn/vim.git
rsync -a ./vim/ ~/
rm -rf ./vim
sudo pip install powerline-status
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

source ~/.bashrc
nohup vim +PlugInstall +CocInstall +qall >/dev/null 2>&1 &

sudo echo TLP_ENABLE=1 | sudo tee /usr/share/defaults/tlp
systemctl enable tlp.service
systemctl enable tlp-sleep.service 

systemctl enable NetworkManager-dispatcher.service
systemctl mask systemd-rfkill.service
systemctl mask systemd-rfkill.socket
