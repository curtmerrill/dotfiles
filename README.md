# dotfiles

## Usage

1. Clone repo
2. cd into repo directory
3. run `install`


## Notes
- uses dotbot, base-16 as submodules
- assumes direnv and [starship](https://starship.rs/guide/#🚀-installation) are installed
  - `brew install direnv starship`
- assumes bat is installed
  - `brew install bat`




- shell `*profile` run once per login; good for system-wide environment vars, init scripts
- shell `*rc` run each time shell is started; good for prompt customization, functions, path exports, aliases


Create `~/.gitconfig.local` to set user info:
```
[user]
    name = Curt Merrill
    email = curt@curtmerrill.com
```
