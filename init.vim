" display numbers by default
set number

" set tab stops every 4 spaces and set shiftwidth 4 spaces
set ts=4 sw=4

" continue indent on wrapped lines
set breakindent

" indent by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
set breakindentopt=shift:2,min:40,sbr

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

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none


Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

runtime linux-config/init-linux.vim
