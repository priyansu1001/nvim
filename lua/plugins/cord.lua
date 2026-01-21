return 
{	-- https://github.com/vyfor/cord.nvim
	-- for rpc discord
  'vyfor/cord.nvim',
  build = ':Cord update',
  -- opts = {}

	config = function ()

	require('cord').setup {
    -- Your configuration options go here

		idle = {
				smart_idle = true,
				details = 'Idling',
				state = nil,
				tooltip = '💤',
				icon = 'https://i.postimg.cc/HkgSdSVh/Robin.gif',
			},
		-- idle = {
		-- 		smart_idle = true,
		-- 		details = 'Idling',
		-- 		state = nil,
		-- 		tooltip = '💤',
		-- 		icon = 'https://i.postimg.cc/vTSDyjPp/Raiden.png',
		-- 		icon = 'https://i.postimg.cc/L50kWxjs/Sticker-PPG-13-Acheron-04.webp',
		--		icon = 'https://i.postimg.cc/5NP1DFPT/Sticker-PPG-14-Robin-01.webp'
		--		icon = 'https://i.postimg.cc/HkgSdSVh/Robin.gif',
		--		icon = 'https://i.postimg.cc/dVh0Q9pG/robin2.gif'

		-- 	},
		  advanced = {
			plugin = {
			  autocmds = true,
			  cursor_update = 'on_hold',
			  match_in_mappings = true,
			},
			server = {
			  update = 'fetch',
			  pipe_path = nil,
			  executable_path = nil,
			  timeout = 3000000,
			},
			discord = {
			  reconnect = {
				enabled = true,
				interval = 5000,
				initial = true,
			  },
			},
			workspace = {
			  root_markers = {
				'.git',
				'.hg',
				'.svn',
			  },
			  limit_to_cwd = false,
			},
		  },
		}

  -- vim.keymap.set('n', '', ':Cord presence toggle')

	end,
}
