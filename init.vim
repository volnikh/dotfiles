:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175


"===================================================================
"Enable copy/paste to/from clipboard using +x +y and +gp
set clipboard+=unnamedplus
"===================================================================


"              Tab navigation like Firefox.
"===================================================================
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-c>     :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-c>     <Esc>:tabclose<CR>
nnoremap <S-B> :bnext<CR>"
"===================================================================


"===================================================================
"               Python scipt run key
"autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
"autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
"===================================================================


"              search patter in all open buffers
"===================================================================
function SearchAllBuffers(patern)
  call ClearSearchResult()
  execute 'bufdo vimgrepadd '.a:patern.' %'
  execute 'copen'
endfunction

function ClearSearchResult()
  execute 'cex []'
  execute 'cclose'
endfunction

command -nargs=1 SA call SearchAllBuffers(<f-args>)
nnoremap <C-BackSpace> :call ClearSearchResult()<CR>
"===================================================================


"              resize current window
"===================================================================
noremap <A-Right> :vertical resize +5<CR>
noremap <A-Left> :vertical resize -5<CR>
nnoremap <A-Up> :resize +5<CR>
nnoremap <A-Down> :resize -5<CR>
"===================================================================


"===================================================================
"              Install plugins
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'preservim/nerdtree'
Plug 'puremourning/vimspector'  "pip install neovim  && pip install pynvim
"Plug 'kyoz/purify', { 'rtp': 'vim' }
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()
"===================================================================

set expandtab
set background=dark
colorscheme PaperColor
set mouse=a
set number
set relativenumber
set numberwidth=4

autocmd VimEnter * NERDTree c:\
let g:vimspector_enable_mappings = 'HUMAN'
