local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  commit = "e283ab937e0197b37ec5d8013e49495193407324"
}

function M.config()
  require("nvim-web-devicons").setup {
    override_by_extension = {
    ["py"] = {
      icon = "",
      color = "#FFD166",
      name = "Python"
        },
    ["lua"] = {
      icon = "",
      color = "#06D6A0",
      name = "lua"
        },
    ["html"] = {
      icon = "",
      color = "#06D6A0",
      name = "html"
        },
    ["rb"] = {
      icon = "",
      color = "#EF476F",
      name = "Ruby"
        },
    ['cpp'] = {
      icon = "󰙲",
      color = "#385F71",
      name = "Cpp",
    }
      },
    color_icons = true,
    default = true,
  }

end

return M
