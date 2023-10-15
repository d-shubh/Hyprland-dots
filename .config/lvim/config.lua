lvim.colorscheme = "decayce"

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

vim.opt.guifont = "Victor Mono:h15:b:i"
vim.opt.linespace = 3
vim.opt.shiftwidth= 4
vim.opt.tabstop = 2 
vim.g.neovide_padding_top = 20
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 10
vim.g.neovide_padding_left = 10

if vim.g.neovide then
  vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
end
vim.opt.clipboard = { 'unnamed', 'unnamedplus' }

vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})

lvim.plugins = {
  {'decaycs/decay.nvim', name = 'decay'},
  { "ellisonleao/gruvbox.nvim" },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { "catppuccin/nvim", name = "catppuccin" },
  { 'shaunsingh/nord.nvim' },
  { "neanias/everforest-nvim" },
  {
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
					 }
	end,
  }

}