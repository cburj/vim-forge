# ⚒ FORGE
FORGE Makes common DAI build commands available within VIM without the need to close your current buffer.

## Supported Build Commands
* :Fmake --> make
* :Fmakefresh --> make fresh
* :Fmakeatf --> make atf
* :Fmakeapi --> make web_api_cgi
* :Futsysbuild --> ut_sys_build

## Installation (Using VIM-Plug)
* Add the following to your .vimrc file where you would normally install plugins:  Plug 'cburj/vim-forge'
* Save and Quit the file.
* Open a new VIM buffer and call :PlugInstall
* Wait for the plugin to clone and install.

## Updating VIMBIUS with a Plugin Manager
* Open a new VIM buffer and call :PlugUpdate

## Contributing
If you feel comfortable developing new features in Vimscript, then feel free to create a pull request and I will gladly merge in your code!
