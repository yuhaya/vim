execute pathogen#infect()
set tabstop=4               " 设置tab键的宽度
set shiftwidth=4            " 换行时行间交错使用4个空格
set autoindent              " 自动对齐
set backspace=2             " 设置退格键可用
set cindent shiftwidth=4    " 自动缩进4空格
set smartindent             " 智能自动缩进
set ai!                     " 设置自动缩进
set nu!                     " 显示行号
set showmatch               " 显示括号配对情况
set hlsearch                " 开启高亮显示结果
set incsearch               " 开启实时搜索功能
set nowrapscan              " 搜索到文件两端时不重新搜索
"set cursorline             " 突出显示当前行
"set hidden                 " 允许在有未保存的修改时切换缓冲区
"set list                   " 显示Tab符，使用一高亮竖线代替
syntax enable               " 打开语法高亮
syntax on                   " 开启文件类型侦测
filetype on                 " 
filetype indent on          " 针对不同的文件类型采用不同的缩进格式
filetype plugin on          " 针对不同的文件类型加载对应的插件
set nobackup                " 设置无备份文件
set nocompatible            " 不使用vi兼容的模式
set helplang=cn				" 显示中文帮助			
set encoding=utf-8			" 设置编码
Helptags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1
"if has("cscope")
"   set csprg=/usr/bin/cscope
"   set csto=0
"   set cst
"   set nocsverb
"   if filereadable("cscope.out")
"        cs add cscope.out
"   elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"   endif
"   set csverb
"endif
