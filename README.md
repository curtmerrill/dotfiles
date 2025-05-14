uses dotbot, base-16 as submodules
assumes direnv and [starship](https://starship.rs/guide/#🚀-installation) are installed
  - brew install direnv starship

TODO:
  - add bashrc, bashprofile for servers
  - actually write a readme
  - do some testing

## Notes

- shell `*profile` good for system-wide environment vars, init scripts
- shell `*rc` good for prompt customization, functions, path exports, aliases


`.zprofile` run once on login
`.zshrc` run each time a shell is started

`.bash_profile` loaded once on login
`.bashrc` loaded each time a shell is started
