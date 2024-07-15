" set whichwrap+=<,>,h,l      " 允许backspace和光标键跨越行边界
set scrolloff=3 " 移动到顶部或底部的时候保持5行距离
set cursorline

set clipboard+=unnamedplus
" set mouse=a

set nobackup
set hidden
set noswapfile
set noerrorbells
set novisualbell
set autoread  "开文件监视，如果编辑中文件发生外部改变就进行提示

set tabstop=2
set shiftwidth=2  " 设置tab键和自动缩进
set softtabstop=2 " 设置显示行尾的空格和制表符/空格和tab的样式
set expandtab     " expand tab to space

set autoindent " 自动缩进/下一行和上一行的格式相同
set cindent

" set foldmethod=marker
set foldlevel=100

" set autochdir         " auto chance director

set hlsearch           " 搜索高亮
exec "nohlsearch"
set ignorecase         " 搜索忽略大小写
set smartcase          "只有一个大写字母的搜索词，将大小写敏感；其他情况都是写不敏感
set showmatch          " 高亮显示匹配的括号


set splitbelow
set splitright "在被分割的窗口间显示空白，便于阅读
set encoding=utf-8          " 使用 utf-8 编码

set wildmenu
set wildmode=longest,full
set completeopt=menu,menuone    " 自动补全显示菜单
set wildignorecase
set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store

syntax on
filetype on
filetype plugin on
" syntax enable
" filetype plugin indent on " 针对不同文件类型加载对应插件
