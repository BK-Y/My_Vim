" Brook vim �����ļ�
"==================="
"1.��������"
"==================="
set wildmenu	"��TAB��ʱ�������Զ�����"
set ignorecase	"���Դ�Сд"
set number	"��ʾ�к�"
set visualbell	"��ֹ����"
set ruler	"��ʾ��ǰ���λ��"
set cul		"������ʾ���������
set autoread	"�ļ���Vim֮���޸Ĺ����Զ����¶���"
set autowrite	"�����Զ���������"
set autochdir	"��ǰĿ¼���ű��༭�ļ��ĸı���ı�"
set nocp	"ʹ��vim����vi"
set mouse=a	"�������֧��"
filetype on "�����ļ����ͼ��"
filetype plugin on "����vim�����ļ����Ͳ��"
    "ѡ���븴��ճ������
map <silent>  <C-A>  gg v G "Ctrl-A ѡ����������"
vmap <C-c> "+y	"Visualģʽ�£����Ƶ�ǰѡ������Ҫvim���а��ϵͳ���а�
vmap <C-v> "+p	"Visualģʽ�£���ϵͳ���а����ݲ��뵽��ǰλ��
nmap <C-c> "+Y	"Normalģʽ�£����Ƶ�ǰѡ������Ҫvim���а��ϵͳ���а�
nmap <C-v> "+P	"Normalģʽ�£���ϵͳ���а����ݲ��뵽��ǰλ��
"imap <C-c> <Esc>"+Yi	"Insertģʽ�£����Ƶ�ǰѡ������Ҫvim���а��ϵͳ���а�
"imap <C-v> <Esc>"+Pi	"Insertģʽ�£���ϵͳ���а����ݲ��뵽��ǰλ��
"map 9 $ ͨ��9��ת����ĩβ,0Ĭ����ת������"
"set cuc	"������ʾ���������

"==================="
"2.���򿪷���ص�����"
"==================="
"(1)ʹ��%��ѡ�����飬Ȼ��ʹ�ÿ�ݼ�zf���۵�"
set foldmethod=marker
"(2)ע�ͣ�ѡ���ı�������;c����ע�ͣ�����;u ����ȡ��ע��"
vmap <silent> ;c :s/^/\/\//<CR>:noh<CR>
vmap <silent> ;u :s/\/\///<CR>:noh<CR>
"(3) ��������г���Ŀ�ݼ�"
map <silent>  <C-F5> :make %:r <CR>:!./%:r<CR>  "Ctrl+F5: ִ��makefile�ļ�"
map <silent>  \rr :!gcc  -Wall -g  %  -lm -o  %:r<CR> :!./%:r<CR>"\rr: ���벢���е�ǰ�ļ��Ķ�Ӧ����"
map  <silent>  \rc :!gcc  -Wall -g -c % <CR>"\rc:���뵱ǰ�ļ�"
"(4)Դ�ļ���ͷ�ļ�֮������л�"
nmap ,a :find %:t:r. ",a: �л��������ļ�����Ҫ�ֶ������ļ��ĺ�׺"
nmap ,c :find %:t:r.c<cr> ",c: �л���ͬ��c���Ե�Դ�ļ�"
nmap ,C :tabf %:t:r.cpp<cr> ",C: �л���ͬ��c++��Դ�ļ�,��tabpage��ʽ��"
nmap ,h :find %:t:r.h<cr>",h �л�����ǰ�ļ����ڵ�ͷ�ļ�"
"(5)����"
syn on "�����﷨��������"
set pastetoggle=<F11> "F11��֧���л�paste��nopaste״̬��"
"============"
"3. �ര�ڲ���"
"============"
"map + <C-W>+  "+�����󴰿�"
map - <C-W>-  "- :   ��С����"
map <C-l> <C-W>l "C-l �ƶ����Ҳര��"
map <C-h> <C-W>h "C-h �ƶ�����ര��"
map <C-j> <C-W>j   "C-j �ƶ����·�����"
map <C-k> <C-W>k "C-k �ƶ����Ϸ�����"
"============"
"4. tabpages�л�"
"============"
map < :tabpre<CR> 
map > :tabnex<CR>

"============="
"5. ��������"
"============="
set cindent "c/c++�Զ�����"
set smartindent
set autoindent"�ο���һ�е�������ʽ�����Զ�����"
filetype indent on "�����ļ����ͽ�������"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab 

"================="
"6. ��ǰ�ļ�������ѡ��"
"================="
set hlsearch "������������ĸ�����ʾ"
set incsearch "�����������(ʵʱ����)"

"=========================="
"7.��Ҫ�����ļ��ͱ����ļ������ٳ�ͻ"
"=========================="
set noswapfile
set nobackup
set nowritebackup

"============="
"9. ���Һ��滻�ı�"
"============="
"nmap ;s :%s/\<<C-R>=expand("<cword>")<CR>\>/
"nmap ;g :vimgrep <C-R>=expand("<cword>")<CR>

"========================"
" 10.����ı�����"
"========================"
"map <silent>  \d a<C-R>=strftime("%Y/%m/%d %A")<CR>  "�����������"
"map <silent>  \t a<C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR>"�������ʱ��"
"map <silent>   ,d :split ~/Dropbox/Doc/ <CR> 
"iab --l  -------------------- 
"iab ==l  ====================

"========================"
"11.txt�ļ�����wiki�﷨����"
"========================"
 autocmd BufNewFile *.txt set ft=confluencewiki 
 autocmd BufEnter *.txt set ft=confluencewiki

 "======================"
 "12.�����ļ����룬���������������"
 "======================"
 if has("multi_byte")
    set fileencodings=utf-8,ucs-bom,cp936,cp1250,big5,euc-jp,euc-kr,latin1
 else
    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
 endif

 "==================="
 "13. ��gvim ������"
 "=================="
 if has("gui_running")
     colorscheme koehler 
     set fileencodings=utf-8,ucs-bom,cp936,cp1250,big5,euc-jp,euc-kr,latin1
"     set guioptions=mtr "ֻ��ʾ�˵����Ҳ������"
     set guifont=������:h12
     set guioptions=T "�������ع�����
     set guioptions=M	"�������ز˵���
     set guioptions=R	"���������Ҳ������
 endif
