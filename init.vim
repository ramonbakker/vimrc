runtime coc.vimrc
runtime airline.vimrc
runtime syntastic.vimrc
runtime vimify.vimrc

set number relativenumber
set colorcolumn=80,120
set termguicolors
set cursorline
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:· 
set list
set tags+=$HOME/.config/nvim/tags/
set clipboard=unnamed
set clipboard=unnamedplus
set undofile
set tabstop=4
set shiftwidth=4
set expandtab

inoremap jj <Esc>
inoremap <C-M-i> <C-O>:call PhpInsertUse()<CR>
nnoremap <F2> :Fern . -reveal=% -drawer -toggle -width=40<CR>
nnoremap <F3> :call pdv#DocumentWithSnip()<CR>
nnoremap <C-p> :Files<CR>
nnoremap <Leader>c :Files %:p:h<CR>
nnoremap <Leader>lb :Buffers<CR>
nnoremap <Leader>ls :Vista finder coc<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :CocList --interactive --auto-preview symbols<CR>

" Sort selected lines by length
vnoremap <Leader>sl !awk '{ print length, $0 }' \| sort -n \| cut -d ' ' -f 2-<CR>
vnoremap <Leader>slr !awk '{ print length, $0 }' \| sort -nr \| cut -d ' ' -f 2-<CR>

nmap <Leader>s <Plug>Sneak_s
nmap <Leader>S <Plug>Sneak_S
nmap <Leader>; <Plug>Sneak_;
nmap <Leader>, <Plug>Sneak_,

" vim-test
nmap <Leader>tn :TestNearest<CR>
nmap <Leader>tf :TestFile<CR>
nmap <Leader>ts :TestSuite<CR>
nmap <Leader>tl :TestLast<CR>
nmap <Leader>tv :TestVisit<CR>

" Documentation: https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Documentation: https://github.com/neoclide/coc-css#install
autocmd FileType scss setl iskeyword+=@-@

" Configuration for stephpy/vim-php-cs-fixer
" Install php-cs-fixer with 'composer global require friendsofphp/php-cs-fixer'
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

autocmd BufWritePost *.php silent! PrettierAsync

let g:sneak#label = 1
let g:sneak#f_reset = 0
let g:sneak#t_reset = 0
let g:camelcasemotion_key = '<Leader>'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:vim_json_syntax_conceal = 0
let g:jsonpath_register = 'j'
let g:pdv_template_dir = $HOME . '/.config/nvim/pdv_templates'
let g:jsdoc_templates_path = $HOME. '/.config/nvim/jsdoc_templates/default.js'
let g:jsdoc_formatter = 'tsdoc'
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-phpls',
    \ 'coc-css',
    \ 'coc-snippets',
    \ 'coc-lists',
    \ 'coc-html',
    \ 'coc-yaml',
    \ 'coc-highlight',
    \ 'coc-tabnine',
    \ 'coc-emmet',
    \ 'coc-angular',
    \ 'coc-pairs',
    \ 'coc-prettier'
    \ ]
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger = '<C-p>'

let g:snipMate = { 'snippet_version' : 1 }

let g:fern#renderer = 'nerdfont'

let g:test#strategy = 'neovim'
let g:test#javascript#runner = 'jest'

call plug#begin(stdpath('data') . '/plugged')
Plug 'sainnhe/sonokai'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vista.vim'
Plug 'xolox/vim-misc'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'mogelbrod/vim-jsonpath', { 'on': 'JsonPath' }
Plug 'jparise/vim-graphql'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-mapping-quickfix.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier'
Plug 'mattn/emmet-vim'
Plug 'vim-vdebug/vdebug'
Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'tobyS/vmustache'
Plug 'stephpy/vim-php-cs-fixer'
Plug '2072/PHP-Indenting-for-vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'ncm2/ncm2'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'tobyS/pdv'
Plug 'leafgarland/typescript-vim'
Plug 'heavenshell/vim-jsdoc', {
    \ 'for': ['javascript', 'javascript.jsx', 'typescript'],
    \ 'do': 'make install'
\ }
Plug 'Quramy/vim-js-pretty-template'
Plug 'jason0x43/vim-js-indent'
Plug 'justinmk/vim-sneak'
Plug 'bkad/CamelCaseMotion'
Plug 'vim-test/vim-test'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
Plug 'tools-life/taskwiki'
Plug 'n0v1c3/vira', { 'do': './install.sh', 'on': 'ViraIssues' }
Plug 'HendrikPetertje/vimify', { 'on': [
    \ 'SpPlay',
    \ 'SpPause',
    \ 'SpPrevious',
    \ 'SpNext',
    \ 'Spotify',
    \ 'SpToggle',
    \ 'SpSearch',
    \ ]}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_sign_column_background = 'none'
let g:sonokai_transparent_background = 1
let g:sonokai_diagnostic_text_highlight = 1
let g:sonokai_better_performance = 1

colorscheme sonokai

let g:airline_theme = 'sonokai'
let g:airline_powerline_fonts = 1

hi LineNr ctermfg=white guifg=white
hi Normal guibg=None ctermbg=None

hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=black

function! GetCocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

call airline#parts#define_function('coc_current_function', 'GetCocCurrentFunction')
let g:airline_section_x = airline#section#create_right(['coc_current_function', 'filetype'])

runtime fzf.vimrc
runtime nvim-treesitter.vimrc
runtime fern.vimrc
