-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    -- { import = "plugins" },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme tokyonight]])
      end,
    },
    { "editorconfig/editorconfig-vim" },
    {
      "junegunn/fzf",
      build = "~/.fzf/install --all",
    },
    { "junegunn/fzf.vim" },
    { 'terryma/vim-multiple-cursors' },
    { 'tpope/vim-repeat' },
    { 'tpope/vim-surround' },
    { 'wellle/targets.vim' },
    { 'kana/vim-textobj-user' },
    {
      'FooSoft/vim-argwrap',
      cmd = "ArgWrap",
      init = function()
        vim.g.argwrap_tail_comma = 0
      end,
    },
    { 'kana/vim-textobj-function' },
    { 'haya14busa/vim-textobj-function-syntax' },
    {
      'nvim-treesitter/nvim-treesitter',
      branch = 'master',
      lazy = false,
      build = ":TSUpdate",
    },
    { 'Raimondi/delimitMate' },
    {
      'ervandew/supertab',
      init = function()
        vim.g.SuperTabDefaultCompletionType = '<c-n>'
      end,
    },
    { 'hrsh7th/nvim-compe' },
    { 'neovim/nvim-lspconfig' },
    { 'jose-elias-alvarez/null-ls.nvim' },
    {
      'romainl/vim-qf',
      ft = "qf",
      init = function()
        vim.g.qf_mapping_ack_style = 1
        vim.g.qf_auto_open_quickfix = 0
        vim.g.qf_auto_open_loclist = 0
        vim.g.qf_bufname_or_text = 2
      end,
    },
    { 'wincent/ferret' },
    { 'mhinz/vim-grepper' },
    { 'tpope/vim-unimpaired' },
    {
      'junegunn/vim-peekaboo',
      init = function()
        vim.g.peekaboo_window = 'vert bo 50new'
      end,
    },
    { 'kopischke/vim-fetch' },
    { 'Olical/vim-enmasse', cmd = "EnMasse" },
    { 'hauleth/asyncdo.vim', cmd = "AsyncDo" },
    { 'tpope/vim-rsi' },
    { 'justinmk/vim-dirvish' },
    { 'junegunn/goyo.vim', cmd = "Goyo" },
    { 'arthurxavierx/vim-caser' },
    { 'kassio/neoterm' },
    { 'nvim-lua/plenary.nvim' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
