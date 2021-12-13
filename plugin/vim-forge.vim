" -----------------------------------------------------------------------------------
" FORGE:        Forge Build Tools
" Maintainer:   Charlie Burgess [http://cburg.co.uk]
" Version:      1.3.0
" Project Repo: http://github.com/cburj/vim-forge/
" Description:  Makes common DAI build commands available within VIM. 
" -----------------------------------------------------------------------------------



" VERBOSE COMMANDS:
" These can be called by typing the name of the command.
" Replace Make with Forge to get the correct build command
" E.g. make fresh is Forgefresh, which calls FORGE_Make()
command! Forge        :call FORGE_Make()
command! ForgeFile    :call FORGE_MakeFile()
command! ForgeFresh   :call FORGE_MakeFresh()
command! ForgeApi     :call FORGE_MakeWebApiCgi()
command! ForgeAtf     :call FORGE_MakeAtf()
command! ForgeUtSysBuild  :call FORGE_UtSysBuild()
command! ForgeMenu        :call FORGE_MainMenu()


" TODO KEYBINDS:
" These can by called without the need to go into command mode.
" I plan on making these all 3-character or less keybinds to make
" things easy to remember.


""
" Calls the generic 'make' command in the terminal
"
function! FORGE_Make()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make', {
                                      \'out_io': 'buffer',
                                      \'out_name': 'forge_make',
                                      \'err_io': 'buffer',
                                      \'err_name': 'forge_make',
                                      \'stoponexit': 'term',
                                      \} )

  vsplit | buffer forge_make

  execute "normal! ggdG"

  setlocal buftype=nofile
  setlocal filetype=forge_make

  execute s:forgeBanner()
  execute "normal! G"
endfunction


""
" Calls the generic 'make' command on the current file.
"
function! FORGE_MakeFile()
  let executable = expand('%:r')
  let buildcommand = 'make ' . executable

  "invoke the command in a new process instance.
  let job_MAKE = job_start( buildcommand, {
                                      \'out_io': 'buffer',
                                      \'out_name': 'forge_make',
                                      \'err_io': 'buffer',
                                      \'err_name': 'forge_make',
                                      \'stoponexit': 'term',
                                      \} )

  vsplit | buffer forge_make

  execute "normal! ggdG"

  setlocal buftype=nofile
  setlocal filetype=forge_make

  execute s:forgeBanner()
  execute "normal! G"
endfunction


""
" Calls the 'make fresh' command in the terminal
"
function! FORGE_MakeFresh()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make fresh', {
                                      \'out_io': 'buffer',
                                      \'out_name': 'forge_make',
                                      \'err_io': 'buffer',
                                      \'err_name': 'forge_make',
                                      \'stoponexit': 'term',
                                      \} )

  vsplit | buffer forge_make

  execute "normal! ggdG"
  
  setlocal buftype=nofile
  setlocal filetype=forge_make

  execute s:forgeBanner()
  execute "normal! G"
endfunction


""
" Calls the 'make fresh' command in the terminal
"
function! FORGE_MakeWebApiCgi()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make web_api_cgi', {
                                      \'out_io': 'buffer',
                                      \'out_name': 'forge_make',
                                      \'err_io': 'buffer',
                                      \'err_name': 'forge_make',
                                      \'stoponexit': 'term',
                                      \} )

  vsplit | buffer forge_make

  execute "normal! ggdG"

  setlocal buftype=nofile
  setlocal filetype=forge_make

  execute s:forgeBanner()
  execute "normal! G"
endfunction


""
" Calls the 'make fresh' command in the terminal
"
function! FORGE_MakeAtf()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make atf', {
                                      \'out_io': 'buffer',
                                      \'out_name': 'forge_make',
                                      \'err_io': 'buffer',
                                      \'err_name': 'forge_make',
                                      \'stoponexit': 'term',
                                      \} )

  vsplit | buffer forge_make

  execute "normal! ggdG"
  
  setlocal buftype=nofile
  setlocal filetype=forge_make

  execute s:forgeBanner()
  execute "normal! G"
endfunction


""
" Calls the 'make fresh' command in the terminal
"
function! FORGE_UtSysBuild()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'ut_sys_build', {
                                      \'out_io': 'buffer',
                                      \'out_name': 'forge_make',
                                      \'err_io': 'buffer',
                                      \'err_name': 'forge_make',
                                      \'stoponexit': 'term',
                                      \} )

  vsplit | buffer forge_make

  execute "normal! ggdG"

  setlocal buftype=nofile
  setlocal filetype=forge_make

  execute s:forgeBanner()
  execute "normal! G"
endfunction


""
" Handles all of the inputs from the SaveMenu popup box
"
func! FORGE_HandleBuildMenu(id, result)
  if a:result == 1
    call FORGE_Make()
  elseif a:result ==2
    call FORGE_MakeFile()
  elseif a:result ==3
    call FORGE_MakeFresh()
  elseif a:result == 4
    call FORGE_MakeWebApiCgi()
  elseif a:result == 5
    call FORGE_MakeAtf()
  elseif a:result == 6
    call FORGE_UtSysBuild()
  else
    "Do nothing
  endif
endfunc


""
" Build Menu Popup Function
"
func! FORGE_MainMenu()
  call popup_menu([ 'make', 'make (this file)','make fresh', 'make web_api_cgi','make atf', 'ut_sys_build'], #{ title: "Build Options [FORGE]", callback: 'FORGE_HandleBuildMenu', highlight: 'wildmenu', border: [], close: 'click',  padding: [1,5,1,5]} )
endfun


function! s:forgeBanner()
  execute "normal! i\<cr>█▀▀▀ █▀▀█ █▀▀█ █▀▀█ █▀▀▀\<cr>█▀▀▀ █  █ █▄▄▀ █ ▄▄ █▀▀▀\<cr>█    █▄▄█ █  █ █▄▄█ █▄▄▄\<cr>"
  " execute "normal! i█FORGE"
  execute "normal! ^"
endfunction
