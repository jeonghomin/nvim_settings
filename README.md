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

Neovim을 열면 Lazy.nvim이 플러그인을 자동으로 설치합니다.

### API 키 (LangSmith, Tavily 등)

`bashrc`에는 비밀번호가 들어가지 않습니다. 로컬에서만 `~/.bashrc.local`을 만들고 키를 넣으세요. 예시는 `bashrc.local.example` 참고.

## Neovim 플러그인

- telescope, nvim-tree, bufferline, lualine
- nvim-cmp (자동완성), LSP, treesitter
- copilot, lazygit, floatterm, nvim-dap
- onedark (테마)
