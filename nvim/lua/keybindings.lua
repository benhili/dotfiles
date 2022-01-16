local wk = require("which-key")

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

imap('fd', '<Esc>')
nmap('<leader>bn', '<cmd>bnext<cr>')
nmap('<leader>bp', '<cmd>bprev<cr>')
nmap('<leader>bd', '<cmd>bdelete<cr>')

wk.register({
	f = {
		name = "find",
		["."] = {'<cmd>lua require("telescope.builtin").live_grep()<cr>', "grep project"},
		f = {'<cmd>lua require("telescope.builtin").find_files()<cr>', "find file"},
		p = {'<cmd>Telescope projects<cr>', "search projects"},
		s = {"<cmd>lua require('spectre').open()<cr>", "search and replace (spectre)"},
	},
  v = {"<cmd>CHADopen<cr>", "open CHAD tree"},
	g = { 
		s = {"<cmd>Neogit<cr>", "neogit"}
	}
}, { prefix = "<leader>" })
