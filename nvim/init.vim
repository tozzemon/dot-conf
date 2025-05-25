"
" Style
"

" Vim
hi Normal guibg=NONE guifg=#cecece

" Vimwiki
hi VimwikiHeader1 guifg=#1e1e2e guibg=#bea0ff gui=bold
hi VimwikiHeader2 guifg=#1e1e2e guibg=#caa9ff gui=NONE
hi VimwikiHeader3 guifg=#1e1e2e guibg=#d7b7ff gui=NONE
hi VimwikiHeader4 guifg=#1e1e2e guibg=#e3cfff gui=NONE
hi VimwikiHeader5 guifg=#1e1e2e guibg=#f0e7ff gui=NONE
hi VimwikiHeader6 guifg=#1e1e2e guibg=#ffffff gui=NONE
hi VimwikiHeaderChar guifg=#1e1e2e guibg=#bea0ff gui=bold
hi VimwikiLink guifg=#9ea0ff gui=NONE
hi VimwikiCode guibg=#313131 guifg=#eeeeee gui=NONE cterm=NONE
hi VimwikiDelimiter guibg=#313131 guifg=#bbbbbb gui=NONE cterm=NONE
hi VimwikiComment guifg=#7c7c7c
hi VimwikiListTodo guifg=#cecece gui=bold cterm=NONE

" Which-key
hi WhichKey guifg=#ffffff guibg=NONE
hi WhichKeyGroup guifg=#aaaaaa guibg=NONE
hi WhichKeyDesc guifg=#cccccc guibg=NONE
hi WhichKeyNormal guibg=#1e1e1e

" Minimalist B&W airline
let g:airline_theme = 'base16'

" Base section
hi AirlineNormal     guifg=#cecece guibg=#1e1e1e
hi AirlineInactive   guifg=#aaaaaa guibg=#1e1e1e

" Mode sections
hi AirlineInsert     guifg=#ffffff guibg=#1e1e1e
hi AirlineVisual     guifg=#ffffff guibg=#1e1e1e
hi AirlineReplace    guifg=#ffffff guibg=#1e1e1e
hi AirlineCommand    guifg=#ffffff guibg=#1e1e1e

" Warning & Error
hi AirlineWarning    guifg=#ffffff guibg=#1e1e1e
hi AirlineError      guifg=#ffffff guibg=#1e1e1e


"
" Rules
"

set linebreak
set number
set ignorecase
set smartcase

augroup TrdctlInptPrmpt
  autocmd!
  autocmd BufWinEnter * if expand('%:p') =~ 'tmp' |
	\   set laststatus=0 |
  	\   set noruler |
        \   execute 'normal! ggdG' |
        \   startinsert |
        \   inoremap <buffer> jj <Esc>:wq<CR> |
        \ endif
augroup END

"
" Bindings
"

" Normal & visual mode: Ctrl+C yanks to system clipboard
nnoremap <C-c> "+y
vnoremap <C-c> "+y

" Open VimwikiIndex
nnoremap <Leader>w :VimwikiIndex<CR>

" Check syntax group
nnoremap <leader>st :echo synIDattr(synID(line('.'), col('.'), 1), 'name')<CR>

"
" Plugins
"

let s:is_tmp = expand('%:p') =~ '/tmp/'
if !s:is_tmp
  call plug#begin('~/.vim/plugged')

  Plug 'vimwiki/vimwiki'
  Plug 'chipsenkbeil/vimwiki-server.nvim', { 'tag': 'v0.1.0-alpha.5' }
  
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  Plug 'folke/which-key.nvim'
  
  Plug 'echasnovski/mini.icons'
  Plug 'nvim-tree/nvim-web-devicons'

  call plug#end()
endif

" call plug#begin()
" 
" Plug 'vimwiki/vimwiki'
" Plug 'chipsenkbeil/vimwiki-server.nvim', { 'tag': 'v0.1.0-alpha.5' }
" 
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" 
" Plug 'folke/which-key.nvim'
" 
" Plug 'echasnovski/mini.icons'
" Plug 'nvim-tree/nvim-web-devicons'
" 
" call plug#end()

" Vimwiki settings
let g:vimwiki_list = [{'path': '~/notes', 'syntax': 'markdown', 'ext': '.md'}]
