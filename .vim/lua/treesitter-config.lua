require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}
local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.javascript = "typescript"
