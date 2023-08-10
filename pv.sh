#!/bin/sh

case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
    *.jpg | *.jpeg | *.png | *.gif | *.ico) ~/.config/lf/lf_kitty_preview.sh "$1" "$2" "$3" "$4" "$5";;
    *) bat --color=always --style=numbers "$1";;
esac
