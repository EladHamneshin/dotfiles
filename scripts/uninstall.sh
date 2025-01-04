sudo sudo rm -rf \
    /usr/local/bin/devbox \
    ~/.cache/devbox \
    .local/share/devbox \
    /nix \
    ~/.zshrc \
    ~/.config/starship.toml \
    ~/.kube \
    ~/.zinit \

read -p "Do you want to remove zsh? (y/n): " remove_zsh
if [ "$remove_zsh" = "y" ]; then
    echo "changing shell to bash"
    chsh -s $(which bash)
    echo "removing zsh"
    sudo apt remove -y zsh
fi

