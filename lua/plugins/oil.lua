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
    columns = {
    "icon",
    -- "permissions",
    -- "size",
    -- "mtime",
  },

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
		["g?"] = { "actions.show_help", mode = "n" },
		["<CR>"] = "actions.select",
		["<C-s>"] = { "actions.select", opts = { vertical = true } },
		["<C-h>"] = { "actions.select", opts = { horizontal = true } },
		["<C-t>"] = { "actions.select", opts = { tab = true } },
		["<C-p>"] = "actions.preview",
		["<C-c>"] = false,
		["<C-l>"] = "actions.refresh",
		["-"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
		["`"] = { "actions.cd", mode = "n" },
		["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
		["gs"] = { "actions.change_sort", mode = "n" },
		["go"] = "actions.open_external",
		["gx"] = "actions.copy_entry_path",
		["g."] = { "actions.toggle_hidden", mode = "n" },
		["g\\"] = { "actions.toggle_trash", mode = "n" },
	  },
    }
    
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  vim.keymap.set("n", "<space>-", require("oil").toggle_float)
    end
  }
