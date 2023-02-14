# Dotfiles managed via Stow


## Philosophy

Stow is a symlink manager. I came across several people using it to manage
their "dotfile" configurations. All of the examples I found used application
specific folders, but I wanted try setting up "profiles" instead.

So instead of running a stow command for each config, e.g.

    $ stow vim
    $ stow git
    $ stow zsh

I can do:

    $ stow main
    $ stow home

Where `main` is the base configuration that I want everywhere, and `home`
contains settings specific to my home computer.


## Requirements and Setup

Requirements:
  * Zsh (macOS default; apt-get install zsh, chsh)
  * Stow (brew install stow; apt-get install stow)
  * direnv (brew install direnv; apt-get install direnv)
  * [Powerlevel10k](https://github.com/romkatv/powerlevel10k#manual)
  
Set up: 
  * Clone `dotfiles` directory within `~`.
  * `cd dotfiles`
  * `stow main`
  * `stow <specific>` (optional)

