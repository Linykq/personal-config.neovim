-- Install the parsers you want
require('nvim-treesitter').install({
  'lua', 'python', 'javascript', 'typescript',
  'c', 'cpp', 'rust', 'go', 'bash', 'markdown', 'markdown_inline',
})

-- Enable features per filetype
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'python', 'javascript', 'typescript', 'rust', 'go' },
  callback = function()
    vim.treesitter.start()                                           -- highlighting
    -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'              -- folds
    -- vim.wo.foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
  end,
})
