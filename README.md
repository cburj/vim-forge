![FORGE LOGO](banner.png)

# ⚒ FORGE
FORGE makes common DAI build commands available within VIM without the need to close your current buffer.The output from a build is displayed to the right in a new buffer. The live build outputs are syntax-highlighted so you can easily keep track of the progress.

## Supported Build Commands
* ```:Fmake``` ➡ ```make```
* ```:Fmakefresh``` ➡ ```make fresh```
* ```:Fmakeatf``` ➡ ```make atf```
* ```:Fmakeapi``` ➡ ```make web_api_cgi```
* ```:Futsysbuild``` ➡ ```ut_sys_build```

## Build Menu
All available build commands can also be accessed from the build menu, by calling ```:Fmenu```.

## Note:
Currently, FORGE is unable to correctly handle build failures. You may notice that the progress of your build seems to freeze - this means that an error has been encountered. Unfortunately, I haven't quite had the time to work out how to capture these errors and show them in the output buffer. This should be fixed in version 1.1.0

## Installation (Using VIM-Plug)
* Add the following to your .vimrc file where you would normally install plugins:  Plug 'cburj/vim-forge'
* Save and Quit the file.
* Open a new VIM buffer and call :PlugInstall
* Wait for the plugin to clone and install.

## Updating VIMBIUS with a Plugin Manager
* Open a new VIM buffer and call :PlugUpdate

## Contributing
If you feel comfortable developing new features in Vimscript, then feel free to create a pull request and I will gladly merge in your code!
