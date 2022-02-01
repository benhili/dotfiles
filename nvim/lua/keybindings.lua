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
nmap('<leader>bd', '<cmd>bdelete!<cr>')
nmap('<leader>bk', '<cmd>BufferCloseAllButCurrent!<cr>')
nmap('<Esc>', '<cmd>noh<cr>')

wk.register({
	f = {
		name  = "find",
		["."] = {'<cmd>Telescope file_browser<cr>', "search files"},
		g     = {'<cmd>lua require("telescope.builtin").live_grep()<cr>', "grep project"},
		f     = {'<cmd>lua require("telescope.builtin").find_files()<cr>', "find file"},
		p     = {'<cmd>Telescope projects<cr>', "search projects"},
		s     = {"<cmd>lua require('spectre').open()<cr>", "search and replace (spectre)"},
		r     = {"<cmd>Ranger<cr>", "ranger"}
},
  t = {"<cmd>CHADopen<cr>", "open CHAD tree"},
	g = { 
		name = "git",
		s = {"<cmd>Neogit<cr>", "neogit"}
	},
	e = {
		name = "eval",
		f = {"<cmd>ConjureEvalCurrentForm<cr>", "eval form"},
		b = {"<cmd>ConjureEvalBuf<cr>", "eval buffer"},
		r = {"<cmd>ConjureEvalRootForm<cr>", "eval root"},
	},
	w = {
		name = "window",
		h = {"<C-w>h", "left"},
		j = {"<C-w>j", "down"},
		k = {"<C-w>k", "up"},
		l = {"<C-w>l", "right"},
	},
	q = {"<cmd>:w|bd<cr>", "save and quit buffer"}
	
}, { prefix = "<leader>" })

