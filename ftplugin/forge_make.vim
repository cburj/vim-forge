" -----------------------------------------------------------------------------------
" FORGE:        Forge Build Tools
" Maintainer:   Charlie Burgess [http://cburg.co.uk]
" Version:      1.2.1
" Project Repo: http://github.com/cburj/vim-forge/
" Description:  Makes common DAI build commands available within VIM. 
" -----------------------------------------------------------------------------------





" VERBOSE COMMANDS:
nnoremap <buffer> q     :call FORGE_Quit() <CR>


""
" Closes the build output buffer.
"
function! FORGE_Quit()
  bdelete
endfunction
