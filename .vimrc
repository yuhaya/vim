execute pathogen#infect()
set tabstop=4               " 设置tab键的宽度
set shiftwidth=4            " 换行时行间交错使用4个空格
set autoindent              " 自动对齐
set backspace=2             " 设置退格键可用
set cindent shiftwidth=4    " 自动缩进4空格
set smartindent             " 智能自动缩进
set ai!                     " 设置自动缩进
set nu                      " 显示行号
set showmatch               " 显示括号配对情况
set hlsearch                " 开启高亮显示结果
set incsearch               " 开启实时搜索功能
set nowrapscan              " 搜索到文件两端时不重新搜索
set cursorline              " 突出显示当前行
set mouse=a					" 支持触摸板
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
let Tlist_Show_One_File=1  "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
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

map <silent> <F9> :TlistToggle<cr> "Tlist打开以及关闭切换
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>" "回车即选中当前项
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :"\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
""nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1 "在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>  "跳转到定义处





set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_show_diagnostics_ui = 0
