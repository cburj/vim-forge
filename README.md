![FORGE LOGO](banner.png)

# ⚒ FORGE
FORGE makes common DAI build commands available within VIM without the need to close your current buffer.The output from a build is displayed to the right in a new buffer. The live build outputs are syntax-highlighted so you can easily keep track of the progress.

## Build Menu
All available build commands can also be accessed from the build menu, by calling ```:Fmenu```.

## Supported Build Commands
These commands can be called in command mode. Or bound to keymaps in your .vimrc file.
* ```:Fmake``` ➡ ```make```
* ```:Fmakefresh``` ➡ ```make fresh```
* ```:Fmakeatf``` ➡ ```make atf```
* ```:Fmakeapi``` ➡ ```make web_api_cgi```
* ```:Futsysbuild``` ➡ ```ut_sys_build```  
To stop a build and/or close the build output window, just press ```q```

## Upcoming Features
* Commands inside the build output window. E.g. cancel a build and restart.
* Support for more build methods with arguments. E.g. ```ut_lib prod_lib.c```

## Installation (Using VIM-Plug)
* Add the following to your .vimrc file where you would normally install plugins:  Plug 'cburj/vim-forge'
* Save and Quit the file.
* Open a new VIM buffer and call :PlugInstall
* Wait for the plugin to clone and install.

## Updating VIMBIUS with a Plugin Manager
* Open a new VIM buffer and call :PlugUpdate

## Contributing
If you feel comfortable developing new features in Vimscript, then feel free to create a pull request and I will gladly merge in your code!
