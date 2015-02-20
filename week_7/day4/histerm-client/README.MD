# Histerm Client

## Install
- Clone the Repo
- Either
  - Run the installer (_coming soon_)
  - `mv bin/histerm_client ~/bin`

## Usage
Running the `histerm_client` command will start up a new histerm session. This terminal window will now begin watching for changes to your `~/.history` file and will send those to your session. To exit the session, simply CTRL+C the server to stop it from running.

## Warnings
Currently the histerm client makes a lot of assumptions about your system. This means it probably won't work on your system unless you match the following.
- Using ZSH
- Having your history set to collate into a single history file
- Have ruby, tail, and a stable internet connection


## TODO
- Add Options Parser to turn this script into a useful tool
- Add option to copy session url to clipboard instead of opening it
- Add silent and verbose options
- Remove assumptions on ZSH
- Write install script to set history setup correctly
