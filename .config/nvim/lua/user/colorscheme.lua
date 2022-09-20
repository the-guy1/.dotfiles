vim.cmd [[
try
  colorscheme catppuccin_mocha
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
