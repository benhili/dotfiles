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

nmap('<Esc>', '<cmd>noh<cr>')

wk.register({
	["<leader>"] = { '<cmd>lua require("telescope.builtin").find_files{ path_display = { "truncate" } }<cr>', "find file" },
	b = {
		name = "buffers",
		b    = { '<cmd>lua require("telescope.builtin").buffers()<cr>', "find buffer" },
		n    = { '<cmd>bnext<cr>', "next" },
		p    = { '<cmd>bprev<cr>', "previous" },
		d    = { '<cmd>bdelete!<cr>', "delete" },
		o    = { '<cmd>BufferCloseAllButCurrent!<cr>', "close others" },
	},
	s = {
		name = "search",
		s    = { '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>', "grep project" },
		p    = { '<cmd>lua require("telescope.builtin").live_grep()<cr>', "grep project" },
		r    = { "<cmd>lua require('spectre').open()<cr>", "search and replace (spectre)" },
	},
	f = {
		name = "find",
		f    = { '<cmd>lua require("telescope.builtin").find_files{ path_display = { "truncate" } }<cr>', "find file" },
	},
	["."] = { '<cmd>Telescope file_browser<cr>', "search files" },
	p = {
		p = { '<cmd>Telescope projects<cr>', "search projects" },
	},
	t = { "<cmd>CHADopen<cr>", "open CHAD tree" },
	g = {
		name = "git",
		s = { "<cmd>Neogit<cr>", "neogit" }
	},
	e = {
		name = "eval",
		f = { "<cmd>ConjureEvalCurrentForm<cr>", "eval form" },
		b = { "<cmd>ConjureEvalBuf<cr>", "eval buffer" },
		r = { "<cmd>ConjureEvalRootForm<cr>", "eval root" },
	},
	w = {
		name = "window",
		h = { "<C-w>h", "left" },
		j = { "<C-w>j", "down" },
		k = { "<C-w>k", "up" },
		l = { "<C-w>l", "right" },
	},
	q = { "<cmd>:w|bd<cr>", "save and quit buffer" }

}, { prefix = "<leader>" })
