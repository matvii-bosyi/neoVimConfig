return {
	{
    'sainnhe/sonokai',
    priority = 1000, -- ставимо високу пріоритетність для завантаження теми
    config = function()
      vim.cmd('colorscheme sonokai')
			vim.g.sonokai_transparent_background = 1
			vim.cmd('colorscheme sonokai')
    end,
  }
}
