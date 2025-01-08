#ask user if they want to install zsh
read -p "Do you want to install zsh? (y/n): " install_zsh
if [ "$install_zsh" = "y" ]; then
    echo "installing zsh..."
    sudo apt install -y zsh
    echo "changing default shell to zsh..."
    chsh -s $(which zsh)
    zsh
    echo "## Remember not to switch to back bash before uninstalling zsh." \
    | gum format
fi

#install zinit
echo "installing zinit..."
curl -fsSL https://git.io/zinit-install | sh

#install starship
echo "installing starship..."
curl -fsSL https://starship.rs/install.sh | sh

#install devbox
echo "installing devbox..."
curl -fsSL https://get.jetify.com/devbox | sh
