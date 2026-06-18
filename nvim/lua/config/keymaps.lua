vim.keymap.set("n", "<MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<MiddleMouse>", "<Nop>")

vim.keymap.set("n", "<2-MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<2-MiddleMouse>", "<Nop>")

vim.keymap.set("n", "<3-MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<3-MiddleMouse>", "<Nop>")

vim.keymap.set("n", "<4-MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<4-MiddleMouse>", "<Nop>")

vim.keymap.set("n", "g/", ":noh<CR>")

-- 한글 IME(두벌식)가 켜진 상태에서도 노멀/비주얼/오퍼레이터 모드 명령을 쓸 수 있도록
-- 한글 자모를 대응하는 QWERTY 키로 매핑한다. (Claude Code 터미널 버퍼 등에서 유용)
-- 주의: 두벌식에서 Shift는 쌍자음(ㅃㅉㄸㄲㅆ)과 ㅒ/ㅖ에서만 다른 글자를 만들기 때문에
--       A, I, D, C, G 같은 나머지 대문자 명령은 한글 입력 상태에서 구분이 불가능하다.
local hangul_to_qwerty = {
  -- 첫째 줄
  ["ㅂ"] = "q", ["ㅈ"] = "w", ["ㄷ"] = "e", ["ㄱ"] = "r", ["ㅅ"] = "t",
  ["ㅛ"] = "y", ["ㅕ"] = "u", ["ㅑ"] = "i", ["ㅐ"] = "o", ["ㅔ"] = "p",
  -- 둘째 줄
  ["ㅁ"] = "a", ["ㄴ"] = "s", ["ㅇ"] = "d", ["ㄹ"] = "f", ["ㅎ"] = "g",
  ["ㅗ"] = "h", ["ㅓ"] = "j", ["ㅏ"] = "k", ["ㅣ"] = "l",
  -- 셋째 줄
  ["ㅋ"] = "z", ["ㅌ"] = "x", ["ㅊ"] = "c", ["ㅍ"] = "v", ["ㅠ"] = "b",
  ["ㅜ"] = "n", ["ㅡ"] = "m",
  -- Shift로 구분 가능한 자모(쌍자음/ㅒ/ㅖ)는 대문자 명령으로
  ["ㅃ"] = "Q", ["ㅉ"] = "W", ["ㄸ"] = "E", ["ㄲ"] = "R", ["ㅆ"] = "T",
  ["ㅒ"] = "O", ["ㅖ"] = "P",
}

for hangul, key in pairs(hangul_to_qwerty) do
  vim.keymap.set({ "n", "x", "o" }, hangul, key, { noremap = true })
end

vim.keymap.set('n', '<leader>rn', function()
  vim.lsp.buf.rename()
end, { noremap = true, silent = true })

