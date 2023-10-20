local M = {
  "akinsho/bufferline.nvim",
  commit = "6e96fa27a0d4dd6c00a252b51c0b43b9b95cd302",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  dependencies = {
    {
      "famiu/bufdelete.nvim",
      commit = "8933abc09df6c381d47dc271b1ee5d266541448e",
    },
  },
}

local function isnil(icon)
  return icon == nil or icon == ''
end

function M.config()
  require("bufferline").setup {
    options = {
    buffer_close_icon = "",
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,

    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      if context.buffer:current() then
        return s
      end
      return ""
    end,

    },
    highlights = {
      background = {
        fg = { attribute = "fg", highlight = "TabLine" },
        bg = { attribute = "bg", highlight = "TabLine" },
      },
    },
 }
end
return M
