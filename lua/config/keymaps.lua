-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Claude Code keymaps
local claude_code_maps = {
  { "<leader>ca", "<cmd>ClaudeCode<cr>", desc = "Claude Code Toggle", mode = { "n", "v" } },
  { "<leader>cC", "<cmd>ClaudeCodeContinue<cr>", desc = "Claude Code Continue", mode = { "n", "v" } },
  { "<leader>cr", "<cmd>ClaudeCodeResume<cr>", desc = "Claude Code Resume", mode = { "n", "v" } },
  { "<leader>cV", "<cmd>ClaudeCodeVerbose<cr>", desc = "Claude Code Verbose", mode = { "n", "v" } },
}

for _, map in ipairs(claude_code_maps) do
  vim.keymap.set(map.mode or "n", map[1], map[2], { desc = map.desc })
end
