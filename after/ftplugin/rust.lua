-- See https://github.com/mrcjkb/rustaceanvim?tab=readme-ov-file#zap-quick-setup

local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set(
  "n",
  "gd",
  function() vim.cmd.Trouble { "lsp_definitions" } end,
  { silent = true, buffer = bufnr, desc = "Go to definition" }
)
vim.keymap.set(
  "n",
  "grd",
  function() vim.cmd.Trouble { "lsp_definitions" } end,
  { silent = true, buffer = bufnr, desc = "vim.cmd.Trouble.lsp_definitions()" }
)

vim.keymap.set(
  "n",
  "J",
  function() vim.cmd.RustLsp { "joinLines" } end,
  { silent = true, buffer = bufnr, desc = "Join lines" }
)

local augroup = vim.api.nvim_create_augroup("RustFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  buffer = bufnr,
  callback = function() vim.cmd.RustFmt {} end,
})
