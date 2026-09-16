-- This table is merged with the rest of the neovim-lspconfig
return {
  -- Root at the cwd (I always launch nvim at the service root) instead of the
  -- nested 'file_api/pyproject.toml', so absolute 'file_api.*' imports resolve.
  root_dir = function(_, on_dir)
    on_dir(vim.uv.cwd())
  end,
  settings = {
    basedpyright = {
      typeCheckingMode = "off",
    },
  },
}
