# My settings files.

## Submodules

Adding submodules:
    
    $ git submodule add <...> vim/bundle/<bundle_name>
    $ git add .
    $ git commit -m "Adding submodule for ..."

Update one submodule:

    $ cd <submodule dir>
    $ git pull origin master

Update all submodules:

    $ git submodule foreach git pull origin master
