" ------ [ Gestion des options ] ----------------------------------------------

" We don't want vi compatibility.
set nocompatible

" we have a fast terminal
set ttyfast

" ------ [ Gestion des plugins ] ----------------------------------------------

execute pathogen#infect()

" ------[ Gestion de la barre de statut ] ----------------------------------------------

" Display title
set title

" ruler display in status line
set ruler

" show mode at bottom of screen
set showmode

" Custom statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=
set statusline+=%n   " buffer number
set statusline+=\    " space separator
set statusline+=%t   " file name
set statusline+=%=   " right align
set statusline+=%m%r%h%w
set statusline+=\    " space separator
set statusline+=Encoding:[%{strlen(&fenc)?&fenc:&enc}] " encoding
set statusline+=\    " space separator
set statusline+=Type:%y
set statusline+=\    " space separator
set statusline+=Curseur:[colonne\ %c/ligne\ %l]
set statusline+=\    " space separator
set statusline+=Position:[%l/%L\ (%p%%)]

" occasions to show status line, 2=always.
set laststatus=2

" ------[ Gestion du fichier viminfo ] ----------------------------------------------

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :100 :  up to 100 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:100,%,n~/.vim/viminfo

" ------ [ Gestion de la coloration syntaxique ] ----------------------------------------------
syntax on

" ------ [ Gestion de la correction d'orthographe ] ----------------------------------------------
setlocal nospell
setlocal spelllang=fr

