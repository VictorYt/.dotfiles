#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

echo "Downloading iTerm2 Colors."
curl -sSL -o Afterglow.terminal https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Afterglow.terminal
curl -sSL -o Arthur.itermcolors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Arthur.itermcolors
curl -sSL -o Batman.terminal https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Batman.terminal
curl -sSL -o Ciapre.terminal https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Ciapre.terminal
curl -sSL -o Hybrid.terminal https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Hybrid.terminal
