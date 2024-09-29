return
 {-- file tree, managing like buffer -> oil.nvim   
    'stevearc/oil.nvim',
    opts = {},
    dependencies =  { 
      "echasnovski/mini.icons",
      "nvim-tree/nvim-web-devicons",
    },
    config = function (  )
    -- why require("oil").setup here??
    -- ans = see init.lua
    require("oil").setup{
    -- paste rest all config things here
    default_file_explorer = true,
    columns = {"icon"},

    view_options = {
    show_hidden = true,
    is_hidden_file = function(name, bufnr)
      return vim.startswith(name, ".")
    end,
    is_always_hidden = function(name, bufnr)
      return false
    end,
    natural_order = true,
    case_insensitive = false,
    sort = {
      { "type", "asc" },
      { "name", "asc" },
      },
    },
    keymaps = {
      ["<C-c>"] = false,
      ["q"] = "actions.close",
    },

    }
    
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  vim.keymap.set("n", "<space>-", require("oil").toggle_float)
    end
  }