set nu                            " 行数表示
set laststatus=2                  " ステータスバー表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
set expandtab                     " タブにスペースを使う
set scrolloff=5                   " スクロール時の余白確保
set textwidth=0                   " 一行に長い文章を書いていても自動折り返しをしない
set nobackup                      " バックアップ取らない
set autoread                      " 他で書き換えられたら自動で読み直す
set noswapfile                    " スワップファイル作らない
set hidden                        " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start    " バックスペースでなんでも消せるように
set formatoptions=lmoq            " テキスト整形オプション，マルチバイト系を追加
set vb t_vb=                      " ビープをならさない
set browsedir=buffer              " Exploreの初期ディレクトリ
set whichwrap=b,s,h,l,<,>,[,]     " カーソルを行頭、行末で止まらないようにする
set showcmd                       " コマンドをステータス行に表示

" インデント
set autoindent
set smartindent
set cindent
set cinkeys-=0#
" softtabstopはTabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set tabstop=4 shiftwidth=4 softtabstop=4

set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト
set splitbelow

" Space + hjkl で window を移動できるようにする
" let mapleader = "\<Space>"
let mapleader = ","
nnoremap <Leader>e :e<CR>
nnoremap <Leader>w :w<CR>
nmap <Leader> [window]
nnoremap [window]h <C-w>h
nnoremap [window]j <C-w>j
nnoremap [window]k <C-w>k
nnoremap [window]l <C-w>l

vnoremap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap /r "xy:%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>

" キーバインド関係
" " 行単位で移動(1行が長い場合に便利)
nnoremap j gj
nnoremap k gk

" バッファ周り
nmap <silent> <C-l> :bnext<CR>
nmap <silent> <C-h> :bprevious<CR>
nmap <silent> ,l    :BufExplorer<CR>

" 検索などで飛んだらそこを真ん中に
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
nmap G Gzz

" 改行したときコメントを継続しない
autocmd FileType * setlocal formatoptions-=ro

" vim-plug の設定
" プラグインを追加したら、リロードして :PlugInstall を実行する
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme molokai

runtime! mycoc.vim

autocmd BufNewFile,BufRead *.scm  set filetype=scheme

" NERDTree の隠しファイル表示設定
let NERDTreeShowHidden = 1
