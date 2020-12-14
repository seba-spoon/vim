let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Dev/spooncast-server-api
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit users/models.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 105 + 158) / 317)
exe 'vert 2resize ' . ((&columns * 104 + 158) / 317)
exe 'vert 3resize ' . ((&columns * 106 + 158) / 317)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
168
normal! zo
330
normal! zo
507
normal! zo
536
normal! zo
740
normal! zo
832
normal! zo
926
normal! zo
1151
normal! zo
1714
normal! zo
2097
normal! zo
2690
normal! zo
2749
normal! zo
2750
normal! zo
2767
normal! zo
2768
normal! zo
2775
normal! zo
let s:l = 2761 - ((15 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2761
normal! 0
wincmd w
argglobal
if bufexists("users/views.py") | buffer users/views.py | else | edit users/views.py | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
513
normal! zo
513
normal! zo
513
normal! zo
649
normal! zo
685
normal! zo
689
normal! zo
700
normal! zo
1166
normal! zo
1359
normal! zo
1386
normal! zo
1397
normal! zo
1399
normal! zo
1401
normal! zo
1401
normal! zo
1401
normal! zo
1401
normal! zo
1401
normal! zo
2794
normal! zo
2818
normal! zo
2963
normal! zo
let s:l = 1400 - ((12 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1400
normal! 061|
wincmd w
argglobal
if bufexists("users/models.py") | buffer users/models.py | else | edit users/models.py | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
127
normal! zo
168
normal! zo
330
normal! zo
388
normal! zo
399
normal! zo
403
normal! zo
482
normal! zo
507
normal! zo
536
normal! zo
630
normal! zo
740
normal! zo
832
normal! zo
926
normal! zo
1151
normal! zo
1714
normal! zo
2097
normal! zo
2288
normal! zo
2290
normal! zo
2690
normal! zo
2749
normal! zo
2750
normal! zo
2767
normal! zo
2768
normal! zo
2775
normal! zo
2790
normal! zo
2804
normal! zo
2824
normal! zo
2837
normal! zo
2881
normal! zo
2947
normal! zo
let s:l = 2782 - ((13 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2782
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 158) / 317)
exe 'vert 2resize ' . ((&columns * 104 + 158) / 317)
exe 'vert 3resize ' . ((&columns * 106 + 158) / 317)
tabnext 1
badd +1407 users/views.py
badd +863 users/models.py
badd +22 SpoonCast/mixins.py
badd +2139 billings/models.py
badd +373 users/tasks.py
badd +659 SpoonCast/push.py
badd +44 casts/models.py
badd +1 users
badd +18 SpoonCast/db.py
badd +36 SpoonCast/mongo.py
badd +1 SpoonCast/tasks.py
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
