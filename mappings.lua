-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>?"] = { ":Legendary<cr>", desc = "Command palette with Legendary" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- for sane movements within wrapped text
    ["<Down>"] = { "v:count == 0 ? 'gj' : 'j'", expr = true, desc = "Move cursor down" },
    ["<Up>"] = { "v:count == 0 ? 'gk' : 'k'", expr = true, desc = "Move cursor up" },
    ["gn"] = { ":bn<cr>", desc = "Next buffer" },
    ["<leader>bn"] = { ":bn<cr>", desc = "Next buffer" },
    ["<leader>n"] = { ":NnnPicker<cr>", desc = "Pick file with nnn" },
    ["<leader>fc"] = { ":Commands<cr>", desc = "All ex commands with fzf" },
    ["<leader>fw"] = { ":Lines<cr>", desc = "Find word in buffers with fzf.vim" },
    ["gp"] = { ":bp<cr>", desc = "Previous buffer" },
    ["<leader>bp"] = { ":bp<cr>", desc = "Previous buffer" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<Down>"] = { "<C-o>gj", desc = "Move cursor down" },
    ["<Up>"] = { "<C-o>gk", desc = "Move cursor up" },
  },
}
