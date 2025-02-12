require('colorizer').setup(
    {
    'lua',
    }
)

function ColorMyPencils(color)
    color = color or "onedark"

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
    vim.api.nvim_set_hl(0,"comment",{fg = "#00ffff"})
    vim.api.nvim_set_hl(0,"LineNr",{fg = "#ffffff",  bg = "#000099"})
    vim.api.nvim_set_hl(0,"CursorLine",{bold = true, bg = "#000099"})
    vim.api.nvim_set_hl(0,"CursorLineNr",{fg = "#ffffff", bold = true, bg = "#0000cc"})
    vim.api.nvim_set_hl(0,"Visual",{bold = true, bg = "#000099"})
    vim.api.nvim_set_hl(0,"colorcolumn",{bg="#f6308e"})
end

ColorMyPencils()
