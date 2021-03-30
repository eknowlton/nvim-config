" Set <Space> as leader
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

"----- Files
let g:ranger_map_keys = 0 " Ranger auto maps this to <leader>f

let g:which_key_map = {}

let g:which_key_map['f'] = { 'name' : 'Files',
	       \ 'r' : ['Ranger', 'Find Files (Ranger)'],
	       \ 'F' : ['call fzf#run()', 'Find Files (FZF)'],
	       \ 'f' : ['MyGF', 'Find All Files (Custom GFiles)'],
	       \ 's' : ['w', 'Save File'],
               \ 'S' : ['wa', 'Save All Files'],
	       \ 'x' : ['x', 'Save & Close'],
               \ }


let g:which_key_map.w = { 'name' : '+ Windows',
	       \ 'd' : ['close', 'Close Window'],
	       \ 's' : ['split', 'Horizontal Split'],
	       \ 'v' : ['vsplit', 'Vertical Split'],
	       \ 'h' : ['<C-W>h', 'Move Left'],
	       \ 'l' : ['<C-W>l', 'Move Right'],
	       \ 'j' : ['<C-W>j', 'Move Down'],
	       \ 'k' : ['<C-W>k', 'Move Up'],
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
