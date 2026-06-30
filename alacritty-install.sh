mkdir ~/.config/alacritty/
cp alacritty.toml ~/.config/alacritty/alacritty.toml

sudo ln -s $HOME/.cargo/bin/alacritty /usr/local/bin/alacritty

mkdir -p ~/.local/share/icons
curl -o ~/.local/share/icons/Alacritty.svg https://upload.wikimedia.org/wikipedia/commons/9/90/Alacritty_logo.svg

cp alacritty.desktop ~/.local/share/applications/alacritty.desktop

update-desktop-database ~/.local/share/applications

