return {
  -- Core Copilot Engine
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-l>", -- Alt + l to accept ghost text suggestions
          },
        },
        panel = { enabled = false },
      })
    end,
  },

  -- Copilot Chat UI
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Compiles token counter; requires make, gcc/clang
    opts = {
      -- See Configuration section in repo for more options if needed
      show_help = true, -- Shows help message at the top of the chat buffer
    },
    keys = {
      -- Toggle chat window
      { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Toggle" },
      -- Quick chat prompt
      {
        "<leader>cq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick Chat",
      },
      -- Useful review/explain code actions on visual selection
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = "x", desc = "CopilotChat - Explain" },
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", mode = "x", desc = "CopilotChat - Fix" },
    },
  },
}
