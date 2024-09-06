source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'soft'
colorscheme gruvbox-material

highlight Normal ctermbg=NONE guibg=NONE
" let g:copilot_node_command = '/home/mshehu/.nvm/versions/node/v17.9.0/bin/node'
let g:rainbow_active = 1
let g:indent_blankline_show_first_indent_level = v:false
" let g:copilot_no_tab_map = v:true
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

autocmd BufWritePre * :%s/\s\+$//e
" autocmd TextChanged,TextChangedI * silent write
let g:rustfmt_autosave = 1
filetype plugin indent on

" Continue where last exited in file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Set scrolloff to 25% of the window height and sidescrolloff to 25% of the window width:
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/4
        \ | let &sidescrolloff=winwidth(win_getid())/4
augroup END

" Preserving equal sized split view.
autocmd VimResized * wincmd =

lua <<EOF
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
require('plugins')
require('Comment').setup()
require('gitsigns').setup{
    -- keymaps = {} -- Disable keymaps made by gitsigns.
}
require("ibl").setup()
-- {
--     space_char_blankline = " ",
--     show_current_context = true,
--     show_current_context_start = true,
-- }
require('nvim-autopairs').setup{}
require("bufferline").setup{
    options = {
        mode = "tabs",
        -- always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icons = false,
    },
    highlights= {
        fill = { bg = "#3c3836"}
        }
}
require'lualine'.setup {
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
    section_separators = ' ',
    component_separators = '|'
  }
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true, -- enable additional highlighting based on vim regexp engine ( Also fixing a odd spellcheck issue. )
  },
}
EOF
