require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "NeoTree toggle" })

vim.keymap.del("n", "<leader>e")

local function smart_nvim_tree_toggle()
  local api = require("nvim-tree.api")
  local view = require("nvim-tree.view")


  if not view.is_visible() then
    api.tree.open()


  elseif vim.bo.filetype ~= "NvimTree" then
    -- api.tree.focus()
    api.tree.close()

  else
    api.tree.close()

  end
end

map("n", "<leader>e", smart_nvim_tree_toggle, { desc = "Smart Toggle NvimTree" })
