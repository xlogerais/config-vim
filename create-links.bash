#!/bin/bash

cd $HOME || exit 1

CONFDIR=.vim

ln -sf $CONFDIR/vimrc .vimrc
ln -sf $CONFDIR/gvimrc .gvimrc
ln -sf $CONFDIR/vimpagerrc .vimpagerrc

# ln -sf $CONFDIR/viminfo .viminfo
