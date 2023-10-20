local utils = require "utils.keymaps-helpers"
local maps = utils.empty_map_table()

local sections = {
  d = { desc = " Debug" },
  f = { desc = "󰭎 Telescope" },
  g = { desc = "󰊢 Git" },
  l = { desc = " LSP" },
}

-- Standard --
-- Better window navigation
maps.n["<C-h>"] = { "<C-w>h", desc = "Navigate to the left split" }
maps.n["<C-j>"] = { "<C-w>j", desc = "Navigate to the bottom split" }
maps.n["<C-k>"] = { "<C-w>k", desc = "Navigate to the top split" }
maps.n["<C-l>"] = { "<C-w>l", desc = "Navigate to the right split" }

-- Resize with arrows
maps.n["<C-Up>"] = { "<cmd>resize -2<cr>", desc = "Shrink window horizontally" }
maps.n["<C-Down>"] = { "<cmd>resize +2<cr>", desc = "Increase window horizontally" }
maps.n["<C-Left>"] = { "<cmd>vertical -2<cr>", desc = "Shrink window vertically" }
maps.n["<C-Right>"] = { "<cmd>vertical +2<cr>", desc = "Increase window vertically" }

-- Navigate buffers
maps.n["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" }
maps.n["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" }

-- Clear highlights
maps.n["<leader>h"] = { "<cmd>nohlsearch<cr>", desc = "Clear highlights" }

-- Close buffer
maps.n["<S-q>"] = { "<cmd>Bdelete!<cr>", desc = "Close buffer" }

-- Better paste
maps.v["p"] = { "P", desc = "Better paste" }

-- Insert --
-- Press jf fast to ESC
maps.i["jf"] = { "<ESC>", desc = "Better escape" }

-- Visual --
-- Stay in indent mode
maps.v["<"] = { "<gv", desc = "Indent to the left" }
maps.v[">"] = { ">gv", desc = "Indent to the right" }

-- Terminal ESC
maps.t["jf"] = { '<C-\\><C-n>', desc = "Escaping terminal mode" }
maps.t["<C-h>"] = { "<C-\\><C-n><C-w>h", desc = "Navigate to the left split" }
maps.t["<C-j>"] = { "<C-\\><C-n><C-w>j", desc = "Navigate to the bottom split" }
maps.t["<C-k>"] = { "<C-\\><C-n><C-w>k", desc = "Navigate to the top split" }
maps.t["<C-l>"] = { "<C-\\><C-n><C-w>l", desc = "Navigate to the right split" }

-- Plugins

-- NvimTree
maps.n["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", desc = "Toggle explorer" }

-- Telescope
maps.n["<leader>f"] = sections.f
maps.n["<leader>ff"] = { "<cmd>Telescope find_files<cr>", desc = "Find files" }
maps.n["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", desc = "Find words" }
maps.n["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" }
maps.n["<leader>fb"] = { "<cmd>Telescope buffers<cr>", desc = "Find buffers" }

--Need to set this last in order to "push" these new mapping
utils.set_mappings(maps)
