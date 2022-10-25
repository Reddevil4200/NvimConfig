set number 
set relativenumber
set autoindent
" set tabstop=4 " dont use for 42
" set shiftwidth=4 " dont use for 42 
" set smarttab " dont use for 42
" set softtabstop=4 " shouldnt use in 42 to tab 4 blocks
" set mouse=a " to use mouse 
set termguicolors " transparent colour for vim
set encoding=UTF-8 " to show icons


call plug#begin()

"================================================================================================
Plug 'phaazon/hop.nvim' " Bunny Hop || Hop through text
"================================================================================================
Plug 'gruvbox-community/gruvbox' " gruvbox theme
"================================================================================================
Plug 'https://github.com/vim-airline/vim-airline' " airline
"================================================================================================
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
"================================================================================================
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
"================================================================================================
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
"================================================================================================
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
"================================================================================================
Plug 'voldikss/vim-floaterm' " Vim Terminal
"================================================================================================
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
"================================================================================================
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
"================================================================================================
" More Plugins for NerdTree
Plug 'preservim/nerdtree' " for file Tree or NerdTree 
Plug 'ryanoasis/vim-devicons' " NerdTree Extra Icons 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NerdTree highlight of different files && folders 

call plug#end()

"================================================================================================
" lualine setup
lua << END
require'hop'.setup()
END
"================================================================================================
" color scheme contrast
let g:gruvbox_contrast_dark='hard'
"================================================================================================
" colors scheme for nvim
colorscheme gruvbox
highlight Normal guibg=NONE
highlight LineNr guifg=#7b6e63 guibg=NONE
highlight CursorLineNr guifg=#f7bd2f guibg=NONE
"================================================================================================
" NvimNerdTree keybinds 
nnoremap <C-f> :NERDTreeFocus<CR> " To focus on it even in file.
nnoremap <C-t> :NERDTreeToggle<CR> " To open the NerdTree.
nnoremap <C-g> :NERDTreeFind<CR> " to find the main folder.
"================================================================================================
" TagBar keybinds
nmap <F8> :TagbarToggle<CR>
"================================================================================================
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"================================================================================================
" NerdTree symbols to open and close
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
"================================================================================================
" floatar Options setup
let g:floaterm_width = 0.4
let g:floaterm_height = 0.4
let g:floaterm_title = 'floaterm1'
" let g:floaterm_position = 'bottom'
let g:floaterm_autoclose = 1
let g:floaterm_wintype = 'split'
" let g:floaterm_opener = 'drop'
" ===============================================
" Floatar keybinds
" let g:floaterm_keymap_new    = 'E' " for the window
" let g:floaterm_keymap_prev   = 'A_A' " for the preves window
" let g:floaterm_keymap_next   = 'D_D' " for the next window
let g:floaterm_keymap_toggle = 'SS' " for open toggle && hide it maybe floaterm
let g:floaterm_keymap_kill = 'WW' " for killing || stoping floaterm 
autocmd User FloatermOpen        " triggered after opening a new/existed floaterm
"================================================================================================
" " Bunny Hop or Hop keybinds
" " -- place this in one of your configuration file(s)
" local hop = require('hop')
" local directions = require('hop.hint').HintDirection
" vim.keymap.set('', 'f', function()
"   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
" end, {remap=true})
" vim.keymap.set('', 'F', function()
"   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
" end, {remap=true})
" vim.keymap.set('', 't', function()
"   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
" end, {remap=true})
" vim.keymap.set('', 'T', function()
"   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
" end, {remap=true})
