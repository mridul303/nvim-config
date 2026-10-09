return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false,

    dependencies = { "saghen/blink.cmp" },
  },

  -- Live browser preview with Mermaid rendering. markview.nvim styles markdown
  -- in the buffer but leaves ```mermaid blocks as code; Windows Terminal has no
  -- kitty graphics protocol, so inline image rendering is not an option here.
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    -- Downloads the prebuilt server binary from GitHub releases; no npm needed.
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      -- Open in the Windows default browser; WSL2 forwards 127.0.0.1 to Windows.
      vim.g.mkdp_browser = "wslview"
      vim.g.mkdp_auto_close = 0
      -- Print the URL too, as a fallback if wslview does not open it.
      vim.g.mkdp_echo_preview_url = 1
    end,
  },
}
