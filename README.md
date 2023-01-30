# Dotfiles managed via Stow

Stow is a symlink manager. I came across several people using it to manage
their "dotfile" configurations. All of the examples I found used application
specific folders, but I wanted try setting up "profiles" instead.

So instead of running a stow command for each config, e.g.

    $ stow vim
    $ stow git
    $ stow zsh

I want to be able to do something like:

    $ stow main
    $ stow home

Where `main` is the base configuration that I want everywhere, and `home`
contains settings specific to my home computer.

