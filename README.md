# DotFiles


## Requirement

Need to Install

    $ pacman -S git git-lfs neovim kitty zsh


bspwm dependencies

    $ pacman -S bspwm rofi


Need to Install yay using

    $ cd $HOME
    $ git clone https://aur.archlinux.org/yay.git
    $ cd yay
    $ makepkg -si

Install Font using yay 

    $ yay -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd

config the zsh using <a href="https://github.com/romkatv/zsh4humans">zsh4humans</a>

## Instruction 

First Clone the repository from github on $HOME directory and switch to the repo folder

    $ cd $HOME
    $ git clone https://github.com/Itsr1ght/dotfiles
    $ cd dotfiles

Install the stow using pacman

    $ pacman -S stow

Symlink using the stow

    $ stow .


