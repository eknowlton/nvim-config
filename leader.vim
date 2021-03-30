" Set <Space> as leader
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

"----- Files
let g:ranger_map_keys = 0 " Ranger auto maps this to <leader>f
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:which_key_map = {}
let g:which_key_map['f'] = { 'name' : 'Files',
	       \ 'r' : ['Ranger', 'Find Files (Ranger)'],
	       \ 'F' : ['call fzf#run()', 'Find Files (FZF)'],
	       \ 'f' : ['MyGF', 'Find All Files (Custom GFiles)'],
	       \ 's' : ['w', 'Save File'],
               \ 'S' : ['wa', 'Save All Files'],
	       \ 'x' : ['x', 'Save & Close'],
               \ }

"----- Buffers
let g:which_key_map.b = { 'name' : 'Buffers',
               \ 'b' : [':CtrlPBuffer', 'CtrlP Buffers'],
               \ 'r' : ['e', 'Reload Buffer'],
               \ 'd' : ['bd', 'Delete Buffer'],
               \ 'D' : ['Bclose', 'Close All Buffers'],
               \ 'n' : ['bn', 'Next Buffer'],
               \ 'p' : ['bp', 'Previous Buffer'],
               \ }

"----- Window
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

autocmd VimResized * :wincmd =
set splitbelow
set splitright
let g:which_key_map.w = { 'name' : '+ Windows',
	       \ 'd' : ['close', 'Close Window'],
	       \ 's' : ['split', 'Horizontal Split'],
	       \ 'v' : ['vsplit', 'Vertical Split'],
	       \ 'h' : ['wincmd h', 'Move Left'],
	       \ 'l' : ['wincmd l', 'Move Right'],
	       \ 'j' : ['wincmd j', 'Move Down'],
	       \ 'k' : ['wincmd k', 'Move Up'],
	       \ 't' : ['call MaximizeToggle()', 'Close Others'],
	       \ '=': ['wincmd =', 'Resize Equally'],
	       \ }

"----- Git
let g:which_key_map.g = { 'name' : 'Git',
               \ 'a' : ['Gwrite', 'Git Add File'],
               \ 'b' : ['Gblame', 'Git Blame'],
               \ 'c' : ['Gcommit', 'Git Commit'],
               \ 'd' : ['Gdiff', 'Git Diff'],
               \ 'f' : ['Git fetch', 'Git Fetch'],
               \ 'F' : ['Git pull', 'Git Pull'],
               \ 'P' : ['Git push', 'Git Push'],
               \ 'r' : ['Gread', 'Git Reset File'],
               \ 's' : ['Gstatus', 'Git Status'],
               \ 'g' : ['Flog', 'Git Flog'],
               \ 'G' : ['Flogsplit', 'Git Flogsplit'],
               \ }

"----- Deno
let g:which_key_map.t = { 'name' : 'Deno',
               \ 'c' : ['CocCommand deno.cache', 'Cache dependencies'],
               \ 's' : ['CocCommand deno.status', 'Display language server status'],
               \ 'i' : ['CocCommand deno.initializeWorkspace', 'Initialize deno workspace'],
               \ }

"----- Testing
let g:which_key_map.t = { 'name' : 'Testing',
               \ 'n' : ['TestNearest', 'Nearest'],
               \ 'f' : ['TestFile', 'File'],
               \ 's' : ['TestSuite', 'Suite'],
               \ 'l' : ['TestLast', 'Last'],
               \ 'v' : ['TestVisit', 'Visit Last'],
               \ 'r' : ['!gcc -o main % && ./main', 'Compile & Run'],
               \ }

"----- Quit
let g:which_key_map.q = { 'name' : '+ Quit',
               \ 'q' : ['qa', 'Quit All'],
               \ 'Q' : ['qa!', 'Force Quit All'],
               \ }
