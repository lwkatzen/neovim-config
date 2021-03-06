" display numbers by default
set number

" keep cushion of lines above and below cursor
set scrolloff=7

" set tab stops every 4 spaces and set shiftwidth 4 spaces
set ts=4 sw=4

" continue indent on wrapped lines
set breakindent

" indent by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
set breakindentopt=shift:0,min:40,sbr

" append '>>' to indent
set showbreak=>>   

" spell check settings
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=red

" plug-ins
call plug#begin()

Plug 'jiangmiao/auto-pairs'
    let g:AutoPairs={'(':')', '[':']', '{':'}','"':'"', '`':'`'}

Plug 'SirVer/ultisnips'   
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsSnippetDirectories=["UltiSnips","my-snippets"]

Plug 'lervag/vimtex'
    filetype plugin indent on
    syntax enable
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
	let g:latex_view_general_viewer = 'zathura'
	let g:vimtex_view_forward_search_on_start=1
	let g:vimtex_complete_enabled=1

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

" for code completion and LPS stuff
" Plug 'neoclide/coc.nvim', { 'branch' : 'release' }

" solely used for syntax highliting in sxhkd configuration files
Plug 'kovetskiy/sxhkd-vim'

" color scheme
" Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

" ensure true colors turned on (256 bit)
" if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"  echo "set colors to 256 bit"
" endif

" color scheme settings for linux
" syntax on
" set t_Co=256
" set cursorline
" colorscheme onehalflight " this ought to go in the linux config
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

" linux and mac specific config files, ignored by git
runtime mac-config/init-mac.vim
" runtime linux-config/init-linux.vim
