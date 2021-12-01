" -----------------------------------------------------------------------------------
" FORGE:        Forge Build Tools
" Maintainer:   Charlie Burgess [http://cburg.co.uk]
" Version:      0.0.1
" Project Repo: http://github.com/cburj/forge/
" Description:  Makes common DAI build commands available within VIM. 
" -----------------------------------------------------------------------------------
" Features Requiring Implementation:
" - Allow jobs to be stopped from within the buffer.
" - Popup Menu for all build commands.
" - Verbose commands for triggering builds e.g. :make or :makefresh
" -----------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------
" VERBOSE COMMANDS:
" These can be called by typing the name of the command.
" E.g. ':Fmake' will execute the function FORGE_Make()
command! Fmake        :call FORGE_Make()
command! Fmakefresh   :call FORGE_MakeFresh()
command! Fmakeapi     :call FORGE_MakeWebApiCgi()
command! Fmakeatf     :call FORGE_MakeAtf()
command! Futsysbuild  :call FORGE_UtSysBuild()


" TODO KEYBINDS:
" These can by called without the need to go into command mode.
" I plan on making these all 3-character or less keybinds to make
" things easy to remember.

" -----------------------------------------------------------------------------------

""
" Calls the generic 'make' command in the terminal
function! FORGE_Make()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make', {'out_io': 'buffer', 'out_name': 'forge_make'} )

  vsplit | buffer forge_make
  setlocal buftype=nofile
  setlocal filetype=forge_make

  "TODO assign the job to a global variable. Then we can
  "allow the user to stop a job from within the new buffer.
endfunction


""
" Calls the 'make fresh' command in the terminal
function! FORGE_MakeFresh()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make fresh', {'out_io': 'buffer', 'out_name': 'forge_make'} )

  vsplit | buffer forge_make
  setlocal buftype=nofile
  setlocal filetype=forge_make

  "TODO assign the job to a global variable. Then we can
  "allow the user to stop a job from within the new buffer.
endfunction


""
" Calls the 'make fresh' command in the terminal
function! FORGE_MakeWebApiCgi()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make web_api_cgi', {'out_io': 'buffer', 'out_name': 'forge_make'} )

  vsplit | buffer forge_make
  setlocal buftype=nofile
  setlocal filetype=forge_make

  "TODO assign the job to a global variable. Then we can
  "allow the user to stop a job from within the new buffer.
endfunction


""
" Calls the 'make fresh' command in the terminal
function! FORGE_MakeAtf()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make atf', {'out_io': 'buffer', 'out_name': 'forge_make'} )

  vsplit | buffer forge_make
  setlocal buftype=nofile
  setlocal filetype=forge_make

  "TODO assign the job to a global variable. Then we can
  "allow the user to stop a job from within the new buffer.
endfunction


""
" Calls the 'make fresh' command in the terminal
function! FORGE_UtSysBuild()
  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'ut_sys_build', {'out_io': 'buffer', 'out_name': 'forge_make'} )

  vsplit | buffer forge_make
  setlocal buftype=nofile
  setlocal filetype=forge_make

  "TODO assign the job to a global variable. Then we can
  "allow the user to stop a job from within the new buffer.
endfunction
