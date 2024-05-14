local M = {
  "nvim-telescope/telescope.nvim",
  commit = "40c31fdde93bcd85aeb3447bb3e2a3208395a868",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      "ryanoasis/vim-devicons",
      "nvim-treesitter/nvim-treesitter"
    },
  },
}

M.opts = {
  defaults = {
    prompt_prefix = "󰗧",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

  },
  pickers = {
    find_files = {
      theme = "ivy"
    },
    live_grep = {
      theme = "dropdown"
    }
  }
}
return M
