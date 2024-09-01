#!/usr/bin/env bash

MY_DIR="$(cd $(dirname $0) && pwd)"
CONFIG_DIR="${XDG_CONFIG_DIR:-$HOME/.config}"

link_dir() {
   dirName="$MY_DIR/$1"
   tgtPath="$2"
   if [ -e $tgtPath ]; then
     if [ ! "$dirName" == "$(readlink $tgtPath)" ]; then
        mv "$tgtPath" "${tgtPath}.backup-nvPDE"
        ln -s "$dirName" "$tgtPath"
     fi
   fi
}

link_dir nvim "$CONFIG_DIR/nvim"
link_dir wezterm "$CONFIG_DIR/wezterm"
