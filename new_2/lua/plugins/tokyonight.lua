return{-- color scheme -> tokyo night
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,

  config= function (  )
    -- this already requires the tokyonight module  so no need for 
    -- require("tokyonight").setup()
    vim.cmd.colorscheme 'tokyonight-moon'
    vim.cmd.hi 'Comment gui=none' -- for highlights
  end
}