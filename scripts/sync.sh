if [ -f ~/.zshrc ]; then
    rm ~/.zshrc
fi

# TODO: fix ignores
stow --ignore='\scripts' --ignore='\.gitignore$' --ignore='\devbox.*' --ignore='\.git$' --ignore='README.md' .

# apply new fonts
fc-cache -fv

echo "## Follow the instructions at https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions to enable Fira Code in VS Code" \
    | gum format

echo '## Execute `source ~/.zshrc`.' | gum format
