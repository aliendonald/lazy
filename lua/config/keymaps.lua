-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end
map("n", "<leader>fd", function()
  require("telescope.builtin").lsp_definitions((require("telescope.themes").get_dropdown({})))
end, { desc = "Find definitions" })

map("n", "<leader>fw", function()
  require("telescope.builtin").grep_string()
end, { desc = "Find for word under cursor" })
-- map("n", "<leader>fw", function()
--   require("telescope.builtin").live_grep()
-- end, { desc = "Find words" })

map("n", "<F7>", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm float" })
