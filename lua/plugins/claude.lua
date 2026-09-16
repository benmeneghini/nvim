---------------------------------------------------------------------------
-- claude
---------------------------------------------------------------------------

local M = {}

local loader = require("config.loader")

loader.later(function()
  vim.pack.add({ { src = "https://github.com/coder/claudecode.nvim" } })

  require("claudecode").setup({
    terminal = {
      provider = "native",
    },
  })
end)

return M
