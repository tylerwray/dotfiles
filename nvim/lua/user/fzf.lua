vim.g['fzf_layout'] = {
  up = '~90%',
  window = {
    width = 0.8,
    height = 0.8,
    yoffset = 0.5,
    xoffset = 0.5,
    border = 'sharp'
  }
}

-- Unset the fzf colors that fzf.vim sets, use the colors from my terminal
vim.cmd([[unlet g:fzf_colors]])
