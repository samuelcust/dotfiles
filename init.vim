" Plugins List

call plug#begin()      

" Airline - status/tabline bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Telescope - fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }

" Fugitive - Git integration
Plug 'tpope/vim-fugitive'

" Autopairs - auto pairs multiple characters
Plug 'windwp/nvim-autopairs'

" Nerdtree - File manager
Plug 'preservim/nerdtree'

" Neoformat - Format file with prettier
Plug 'sbdchd/neoformat'

" Editorconfig - Set vim config by .editorconfig
Plug 'gpanders/editorconfig.nvim'

call plug#end()



" Airline setup

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1



" Telescope setup

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').git_commits()<cr>



" Autopairs setup

lua << EOF
require("nvim-autopairs").setup {}
EOF



" Nerdtree setup

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1



" Neoformat

let g:neoformat_try_node_exe = 1

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END



" Custom

set number

