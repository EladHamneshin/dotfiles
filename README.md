# dotfiles
This repository contains my personal configuration files (dotfiles) for various tools, applications, and environments I use in my day-to-day workflow. 


## Prerequisites
- [git](https://git-scm.com/downloads)
- [zsh](https://www.zsh.org/)
- [docker](https://www.docker.com/products/docker-desktop)
- [wsl](https://learn.microsoft.com/en-us/windows/wsl/install) (windows)


## Installation

1. Clone the repository to `~/.dotfiles`

```bash
git clone https://github.com/EladHamneshin/dotfiles.git
cd dotfiles
```

2. Run the installation script

```bash
chmod +x scripts/*
./scripts/install.sh
```

3. Run devbox shell to install the tools

```bash
devbox shell
```

4. Run the sync script to apply the changes

```bash
./scripts/sync.sh
```

5. Restart your terminal

```bash
source ~/.zshrc
```

### Notes
- Follow the instructions at https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions to enable Fira Code in VS Code

- For wsl users, you need to manually install the fonts in the windows terminal. Go to the fonts folder in windows file explorer and install the fonts from there (right click and install).

- Follow the docs at https://www.jetify.com/docs/devbox/ to learn more about devbox.

