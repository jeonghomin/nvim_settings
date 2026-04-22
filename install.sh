#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Dotfiles 설치 ==="
echo "경로: $DOTFILES_DIR"
echo ""

# Neovim
mkdir -p ~/.config
if [ -d ~/.config/nvim ]; then
    echo "[nvim] 기존 설정 백업 -> ~/.config/nvim.bak"
    mv ~/.config/nvim ~/.config/nvim.bak
fi
ln -sf "$DOTFILES_DIR/nvim" ~/.config/nvim
echo "[nvim] ~/.config/nvim -> 연결 완료"

# bashrc
if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
    echo "[bashrc] 기존 파일 백업 -> ~/.bashrc.bak"
fi
ln -sf "$DOTFILES_DIR/bashrc" ~/.bashrc
echo "[bashrc] ~/.bashrc -> 연결 완료"

# gitconfig
if [ -f ~/.gitconfig ]; then
    cp ~/.gitconfig ~/.gitconfig.bak
    echo "[gitconfig] 기존 파일 백업 -> ~/.gitconfig.bak"
fi
ln -sf "$DOTFILES_DIR/gitconfig" ~/.gitconfig
echo "[gitconfig] ~/.gitconfig -> 연결 완료"

# profile
if [ -f ~/.profile ]; then
    cp ~/.profile ~/.profile.bak
    echo "[profile] 기존 파일 백업 -> ~/.profile.bak"
fi
ln -sf "$DOTFILES_DIR/profile" ~/.profile
echo "[profile] ~/.profile -> 연결 완료"

# ssh config
mkdir -p ~/.ssh
if [ -f ~/.ssh/config ]; then
    cp ~/.ssh/config ~/.ssh/config.bak
    echo "[ssh] 기존 config 백업 -> ~/.ssh/config.bak"
fi
ln -sf "$DOTFILES_DIR/ssh_config" ~/.ssh/config
echo "[ssh] ~/.ssh/config -> 연결 완료"

echo ""
echo "=== 설치 완료! ==="
echo "Neovim을 열면 플러그인이 자동으로 설치됩니다."
