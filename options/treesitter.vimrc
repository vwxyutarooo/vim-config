lua << EOF
require('tree-sitter-manager').setup {
  -- A list of parser names, or 'all' (installed at startup if missing)
  ensure_installed = {
    'c',
    'lua',
    'vim',
    'vimdoc',
    'query',
    'markdown',
    'markdown_inline',
    'javascript',
    'typescript',
    'tsx',
    'json',
    'yaml'
  },

  -- Automatically install missing parsers when entering a new filetype.
  -- Requires the `tree-sitter` CLI and a C compiler installed locally.
  auto_install = true,

  -- Enable treesitter highlighting (true = all installed parsers).
  highlight = true,

  -- Use standard regex highlighting for these languages instead.
  nohighlight = { 'c' },
}
EOF
