# dotfiles

개인 개발 환경 설정 파일 모음

## 포함 항목

| 파일/폴더 | 설명 |
|-----------|------|
| `nvim/` | Neovim 설정 (Lazy.nvim + 플러그인) |
| `bashrc` | Bash 쉘 설정 |
| `gitconfig` | Git 설정 |
| `profile` | 로그인 쉘 환경변수 |
| `ssh_config` | SSH 호스트 설정 |
| `install.sh` | 심볼릭 링크 설치 스크립트 |

## 설치 방법

```bash
git clone https://github.com/jeonghomin/nvim_settings.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

Neovim을 열면 Lazy.nvim이 플러그인을 자동으로 설치됨


## Neovim 플러그인

- telescope, nvim-tree, bufferline, lualine
- nvim-cmp, LSP, treesitter
- copilot, lazygit, floatterm, nvim-dap
- onedark
