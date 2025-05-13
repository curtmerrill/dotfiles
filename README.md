uses dotbot, base-16 as submodules
currently includes zsh config for macs
assumes direnv and starship are installed
  - brew install direnv starship

TODO:
  - add bashrc, bashprofile for servers
  - update authorized_keys
  - actually write a readme
  - do some testing

## Notes

- shell `*profile` good for system-wide environment vars, init scripts
- shell `*rc` good for prompt customization, functions, path exports, aliases


`.zprofile` run once on login
`.zshrc` run each time a shell is started

`.bash_profile` loaded once on login
`.bashrc` loaded each time a shell is started
