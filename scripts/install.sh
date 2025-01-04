#ask user if they want to install zsh
read -p "Do you want to install zsh? (y/n): " install_zsh
if [ "$install_zsh" = "y" ]; then
    echo "installing zsh..."
    sudo apt install -y zsh
    echo "changing shell to zsh..."
    chsh -s $(which zsh)
    echo "## Remember not to switch to back bash before uninstalling zsh." \
    | gum format
fi

# add nerdfonts to fontconfig   
fc-cache -fv 

#install zinit
echo "installing zinit..."
curl -fsSL https://git.io/zinit-install | bash

#install starship
echo "installing starship..."
curl -fsSL https://starship.rs/install.sh | bash

#install devbox
echo "installing devbox..."
curl -fsSL https://get.jetify.com/devbox | bash