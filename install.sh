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

echo "installing devbox..."
curl -fsSL https://get.jetify.com/devbox | bash