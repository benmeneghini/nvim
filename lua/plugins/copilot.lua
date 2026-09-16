-- ---------------------------------------------------------------------------
-- copilot
-- ---------------------------------------------------------------------------

local loader = require("config.loader")
local options = require("config.options")

loader.later(function()
  if options.copilot_disable then return end

  vim.pack.add({ { src = "https://github.com/zbirenbaum/copilot.lua" } })
  require("copilot").setup({
    suggestion = {
      enabled = true,
      auto_trigger = true,
      hide_during_completion = false,
      keymap = {
        accept = "<C-Space>",
        accept_word = "<C-w>",
        accept_line = "<C-e>",
        dismiss = "<C-d>",
      },
    },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
  })
end)
