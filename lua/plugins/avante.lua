return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- Set this to false to build from the latest changes
  opts = {
    provider = "copilot", -- Use your authenticated Copilot subscription
    auto_suggestions_provider = "copilot",
    behaviour = {
      auto_suggestions = false, -- Switch to true if you want inline ghost text
      support_paste_from_clipboard = false,
    },
  },
  -- This builds the plugin UI components (requires make, cargo/rust installed)
  build = "make",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The options below are optional but highly recommended for the best UI experience
    "nvim-tree/nvim-web-devicons", -- or echasuble/applesels.nvim
    {
      -- Support for image pasting (optional)
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_markdown = true,
          copy_images_to_local_directory = false,
        },
      },
    },
    {
      -- Render markdown beautifully inside Neovim
      "MeanderingProgrammer/render-markdown.nvim",
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
}
