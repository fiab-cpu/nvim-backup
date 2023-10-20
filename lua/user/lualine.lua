local M = {
  "nvim-lualine/lualine.nvim",
  commit = "0050b308552e45f7128f399886c86afefc3eb988",
  event = { "VimEnter", "InsertEnter", "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

local colors = {
  red = "#D05353",
  blue = "#006E90",
  green = "#99C24D",
  purple = "#AA7DCE",
  white = "#FFFAE3",
  black = "#1C1018",
}

local theme = {
  normal = {
    a = {fg = colors.black, bg = colors.green},
    b = {fg = colors.green, bg = colors.black},
    c = {fg = colors.white, bg = colors.black},
    x = {fg = colors.white, bg = colors.black},
    y = {fg = colors.green, bg = colors.black},
    z = {fg = colors.black, bg = colors.green},
  },
  insert = {
    a = {fg = colors.black, bg = colors.blue},
    b = {fg = colors.blue, bg = colors.black},
    x = {fg = colors.black, bg = colors.blue},
    y = {fg = colors.blue, bg = colors.black},
  },
  visual = {
    a = {fg = colors.black, bg = colors.purple},
    b = {fg = colors.purple, bg = colors.black},
    x = {fg = colors.black, bg = colors.purple},
    y = {fg = colors.purple, bg = colors.black},
  },

}

function M.config()
  local status_ok, lualine = pcall(require, "lualine")
  if not status_ok then
    return
  end

  local hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end

  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" , "hint" },
    symbols = { error = " ", warn = " ", hint = " " },
    colored = false,
    always_visible = false,
  }

  local fileformat = {
    "fileformat",
    symbols = {
      unix = 'Distro: '
    },
  }

  local diff = {
    "diff",
    colored = false,
    symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
    cond = hide_in_width,
  }

  local filename = {
    "filename",
    path = 1,
    symbols = {
      modified = "",
      readonly = '',
      unnamed = '[No Name]',
      newfile = '[New]',
      }
  }

  local filetype = {
    "filetype",
    icons_enabled = true,
  }

  local location = {
    "location",
    padding = 0,
  }

  local branch = {
    "branch",
    icon = {
      '',
      align = "left"
    }
  }

  local window = {
    "windows",
    mode = 2,
    use_mode_colors = true,
    windows_color = {
      active = 'lualine_a_normal',
      inactive = 'lualine_c_normal'
    },
  }

  lualine.setup {
    options = {
      globalstatus = true,
      icons_enabled = true,
      theme = theme,
      component_separators = { left = "", right = "󰿊 " },
      section_separators = { left = "", right = "󰿊 " },
      disabled_filetypes = { "dashboard" },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { diff, branch },
      lualine_c = { diagnostics, window },
      lualine_x = { filename },
      lualine_y = { filetype, fileformat },
      lualine_z = { location, "searchcount" },
    },
  }
end

return M
