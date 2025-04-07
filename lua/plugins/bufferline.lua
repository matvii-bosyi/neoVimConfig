return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
      require("bufferline").setup({
        highlights = {
          fill = {
            bg = "none",
          },
          background = {
            bg = "none",
          },
          buffer_visible = {
            bg = "none",
          },
          buffer_selected = {
            bg = "none",
          },
          separator = {
            fg = "none",
            bg = "none",
          },
          separator_visible = {
            fg = "none",
            bg = "none",
          },
          separator_selected = {
            fg = "none",
            bg = "none",
          },
          tab = {
            bg = "none",
          },
          tab_selected = {
            bg = "none",
          },
          tab_close = {
            bg = "none",
          },
          close_button = {
            bg = "none",
          },
          close_button_visible = {
            bg = "none",
          },
          close_button_selected = {
            bg = "none",
          },
          modified = {
            bg = "none",
          },
          modified_visible = {
            bg = "none",
          },
          modified_selected = {
            bg = "none",
          },
          indicator_selected = {
            fg = "none",
            bg = "none",
          },
          indicator_visible = {
            fg = "none",
            bg = "none",
          }
        }
      })
    end
	}
}
