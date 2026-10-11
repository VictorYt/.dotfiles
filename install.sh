#!/bin/sh
# Amorçage des dotfiles : installe chezmoi (sans sudo, dans ~/.local/bin) puis applique.
#   git clone https://github.com/VictorYt/.dotfiles.git ~/.dotfiles && ~/.dotfiles/install.sh
# Forcer un profil : DOTFILES_PROFILE=cluster ~/.dotfiles/install.sh
set -eu

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

if command -v chezmoi >/dev/null 2>&1; then
  chezmoi=chezmoi
else
  bin_dir="$HOME/.local/bin"
  chezmoi="$bin_dir/chezmoi"
  if [ ! -x "$chezmoi" ]; then
    echo "==> Installation de chezmoi dans $bin_dir"
    mkdir -p "$bin_dir"
    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$bin_dir"
  fi
fi

echo "==> Application des dotfiles depuis $DOTFILES_DIR"
exec "$chezmoi" init --apply --source "$DOTFILES_DIR" "$@"
