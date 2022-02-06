-------------------------------------------------------
-- Author: Tanay Karnik
-- Reference Config: https://github.com/brainfucksec/neovim-lua
-------------------------------------------------------

-- Setup Powershell on Windows
if vim.fn.has('win32') == 1 then
vim.cmd [[
  let &shell = has('win32') ? 'powershell' : 'pwsh'
  let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
  let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
  let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
  set shellquote= shellxquote=
]]
end

require('settings')
require('plugins/packer')
-- require('plugins/rosepine')
require('plugins/lsp')
require('keymaps')
