return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  cmd = {
    "ClaudeCode",
    "ClaudeCodeContinue",
    "ClaudeCodeResume",
    "ClaudeCodeVerbose",
  },
  keys = {
    { "<C-,>", "<cmd>ClaudeCode<cr>", desc = "Claude Code Toggle" },
    { "<leader>cC", "<cmd>ClaudeCodeContinue<cr>", desc = "Claude Code Continue" },
    { "<leader>cV", "<cmd>ClaudeCodeVerbose<cr>", desc = "Claude Code Verbose" },
    { "<leader>cr", "<cmd>ClaudeCodeResume<cr>", desc = "Claude Code Resume" },
  },
  config = function()
    require("claude-code").setup({
      -- Window configuration
      window = {
        position = "float", -- or "right", "left", "top", "bottom"
        split_ratio = 0.3, -- Ratio for split windows
        float = {
          width = math.floor(vim.o.columns * 0.8),
          height = math.floor(vim.o.lines * 0.8),
          border = "rounded",
        },
      },

      -- File refresh configuration
      refresh = {
        enable = true, -- Auto-refresh when files change
        updatetime = 1000, -- Update time in ms
        timer_interval = 500, -- Timer check interval in ms
      },

      -- Git configuration
      git = {
        use_git_root = true, -- Use git root as working directory
      },

      -- Shell configuration
      shell = {
        command_sep = "&&", -- Command separator
        pushd = "pushd", -- Push directory command
        popd = "popd", -- Pop directory command
      },

      -- Command configuration
      command = "claude", -- Claude CLI command

      -- Command variants
      command_variants = {
        continue = { "--continue" },
        verbose = { "--verbose" },
      },

      -- Keymaps for navigation and scrolling
      keymaps = {
        toggle = "<C-,>",
        navigation = {
          left = "<C-h>",
          right = "<C-l>",
          up = "<C-k>",
          down = "<C-j>",
        },
        scrolling = {
          page_down = "<C-f>",
          page_up = "<C-b>",
        },
      },
    })
  end,
}
