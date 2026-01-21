return {
  {-- fuzzy finder -> telescope
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies =  {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
     },
    config = function (  )
   	-- this already requires the telescope module  so no need for 
    -- require("telescope").setup
    -- paste rest all config things here
	
    local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end
  },

  { -- for code actions and some other lsp things in a telescope way
    'nvim-telescope/telescope-ui-select.nvim',

    config = function()
    require("telescope").setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    }
    require("telescope").load_extension("ui-select")
    end
  }
}