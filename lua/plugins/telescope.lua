return {
  {
    'nvim-lua/popup.nvim',
  },
  {
    'nvim-lua/plenary.nvim',
  },
  {
    'nvim-telescope/telescope-media-files.nvim',
  },
  {
    'telescope.nvim',
    dependencies = {
      {
        {
          "nvim-telescope/telescope-fzf-native.nvim",
          build = "make",
        },
        "nvim-telescope/telescope-file-browser.nvim",
      }
    },
    config = function(_, opts)
      local telescope = require("telescope")

      opts.extensions = {
        media_files = {
          -- filetypes whitelist
          -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
          filetypes = { "png", "webp", "jpg", "jpeg" },
          -- find command (defaults to `fd`)
          find_cmd = "rg"
        }
      }

      telescope.load_extension('media_files')
      telescope.setup(opts)
    end,
  }
}
