return
{-- brower sync / live server -> live-server-nvim
    'ngtuonghy/live-server-nvim',
    config = function ()
      -- body
	require('live-server-nvim').setup {
    custom = {
        "--port=8080",
        "--no-css-inject",
    },
 serverPath = vim.fn.stdpath("data") .. "/live-server/", --default
 open = "folder", -- folder|cwd     --default
			}

    end
}
