
" -----------------------------------------------------------------------------------
" FORGE:        Forge Build Tools
" Maintainer:   Charlie Burgess [http://cburg.co.uk]
" Version:      0.0.1
" Project Repo: http://github.com/cburj/forge/
" Description:  Makes common DAI build commands available within VIM. 
" -----------------------------------------------------------------------------------
" Features Requiring Implementation:
" - Syntax higlighting to replicate the terminal build output.
" - Allow jobs to be stopped from within the buffer.
" - Popup Menu for all build commands.
" - Verbose commands for triggering builds e.g. :make or :makefresh
" -----------------------------------------------------------------------------------






" Test Commands:
nnoremap tt :call FORGE_Make() <CR>

""
" Calls the generic 'make' command in the terminal
function! FORGE_Make()

  "invoke the command in a new process instance.
  let job_MAKE = job_start( 'make', {'out_io': 'buffer', 'out_name': 'forge_output'} )

  vsplit | buffer forge_output
  vertical resize 75 
  setlocal buftype=nofile
  setlocal filetype=forge_build

  "TODO assign the job to a global variable. Then we can
  "allow the user to stop a job from within the new buffer.
endfunction

""
" Calls the 'make fresh' command in the terminal
function! FORGE_MakeFresh()
endfunction

""
" Calls the 'make fresh' command in the terminal
function! FORGE_MakeWebApiCgi()
endfunction

""
" Calls the 'make fresh' command in the terminal
function! FORGE_MakeAtf()
endfunction

""
" Calls the 'make fresh' command in the terminal
function! FORGE_UtSysBuild()
endfunction
