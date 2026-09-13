-- ================================================================================================
-- TITLE : nvim-tree.lua
-- ABOUT : A file explorer tree for Neovim, written in Lua.
-- LINKS :
--   > github : https://github.com/nvim-tree/nvim-tree.lua
-- ================================================================================================

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false, -- Show hidden files (dotfiles)
			},
			view = {
				adaptive_size = true,
			},
      window = {
        -- Prevents neo-tree from grabbing focus when a buffer closes
        auto_expand_width = false, 
      },
      filesystem = {
        -- Ensures neo-tree doesn't try to take over the empty window space
        hijack_netrw_behavior = "open_default", 
      }
		})
	end,
}
