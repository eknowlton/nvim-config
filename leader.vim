" Set <Space> as leader
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

let g:leaderGuide_mode_local_only = 0

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

let g:lmap = {}


"----- Files
let g:ranger_map_keys = 0 " Ranger auto maps this to <leader>f
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:lmap.f = { 'name' : 'Files',
	       \ 'r' : ['Ranger', 'Find Files (Ranger)'],
	       \ 'F' : ['call fzf#run()', 'Find Files (FZF)'],
	       \ 'f' : ['MyGF', 'Find All Files (Custom GFiles)'],
	       \ 's' : ['w', 'Save File'],
               \ 'S' : ['wa', 'Save All Files'],
	       \ 'x' : ['x', 'Save & Close'],
               \ }

"----- Buffers
let g:lmap.b = { 'name' : 'Buffers',
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
let g:lmap.w = { 'name' : '+ Windows',
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
let g:lmap.g = { 'name' : 'Git',
               \ 'a' : ['Gwrite', 'Git Add File'],
               \ 'b' : ['Gblame', 'Git Blame'],
               \ 'c' : ['Gcommit', 'Git Commit'],
               \ 'd' : ['Gdiff', 'Git Diff'],
               \ 'f' : ['Gfetch', 'Git Fetch'],
               \ 'F' : ['Gpull', 'Git Pull'],
               \ 'P' : ['Gpush', 'Git Push'],
               \ 'r' : ['Gread', 'Git Reset File'],
               \ 's' : ['Gstatus', 'Git Status'],
               \ }

"----- Testing
let g:lmap.t = { 'name' : 'Testing',
               \ 'n' : ['TestNearest', 'Nearest'],
               \ 'f' : ['TestFile', 'File'],
               \ 's' : ['TestSuite', 'Suite'],
               \ 'l' : ['TestLast', 'Last'],
               \ 'v' : ['TestVisit', 'Visit Last'],
               \ }

"----- Quit
let g:lmap.q = { 'name' : '+ Quit',
               \ 'q' : ['qa', 'Quit All'],
               \ 'Q' : ['qa!', 'Force Quit All'],
               \ }
