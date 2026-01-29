# dotfiles

## Usage

1. Clone repo to `~/dotfiles`
  _(ToDo: un-hardcode that from install script)_
2. cd into `dotfiles` directory
3. run `install.sh`

**Prereqs**
  - [direnv](https://direnv.net/docs/installation.html)
  - [starship](https://starship.rs/guide/#🚀-installation)

## Notes
Shell `*profile` files run once per login; good for system-wide environment vars, init scripts.

`*rc` files run each time shell is started; good for prompt customization, functions, path exports, aliases.

The following files will load `*.local` versions for sensitive or
machine specific info:
  - `.zprofile` and `.zshrc`
  - `.bash_profile` and `.bashrc`
  - `.gitconfig`


## Inspiration
[Bread on Penguins](https://www.youtube.com/@BreadOnPenguins)  
[Nicolay Christopher Gerold](https://www.nicolaygerold.com/til/how-to-set-up-your-dotfiles-for-sharing/)  
