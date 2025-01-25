-- Batman Neovim colorscheme (with reduced yellow intensity)

local batman = {}

batman.colors = {
    foreground = "#c6c5bf",
    background = "#1b1d1e",
    cursor_bg = "#c8be46",
    cursor_fg = "#000000",
    selection_bg = "#4d504c",
    selection_fg = "#c8be46",
    ansi = {

        -- base
        "#26292a",
        "#bfb040", -- Muted yellow
        "#7a9632", -- Yellow-green
        "#26292a", -- Dark gray, almost black
        "#6f6f6f", -- Medium gray
        "#c6c5bf", -- Light gray
        "#e0e0dc", -- Lighter gray
    },
    brights = {
        "#505354",
        "#d1c86e", -- Reduced intensity of bright yellow
        "#d1c65d", -- Reduced intensity of bright yellow
        "#d1be4c", -- Reduced intensity of bright yellow
        "#919495",
        "#9a9a9d",
        "#a3a3a6",
        "#dadbd6"
    }
}

function batman.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "batman"

    local c = batman.colors

    local groups = {
        Normal = { fg = c.foreground, bg = c.background },
        Cursor = { fg = c.cursor_fg, bg = c.cursor_bg },
        LineNr = { fg = c.ansi[5] },
        CursorLine = { bg = c.ansi[1] },
        CursorLineNr = { fg = c.brights[3] },
        Visual = { bg = c.selection_bg },
        VisualNOS = { bg = c.selection_bg },
        Search = { fg = c.background, bg = c.brights[3] },
        IncSearch = { fg = c.background, bg = c.brights[3] },
        ColorColumn = { bg = c.ansi[1] },
        StatusLine = { fg = c.foreground, bg = c.ansi[1] },
        StatusLineNC = { fg = c.ansi[5], bg = c.ansi[1] },
        ["@variable"] = { fg = c.ansi[6] },

        Constant = { fg = c.ansi[6] },
        String = { fg = c.ansi[3] },
        Character = { fg = c.ansi[3] },
        Number = { fg = c.ansi[6] },

        Identifier = { fg = c.ansi[6] },
        Function = { fg = c.ansi[2] },

        Statement = { fg = c.ansi[7] },
        Conditional = { fg = c.ansi[7] },
        Repeat = { fg = c.ansi[7] },
        Label = { fg = c.ansi[7] },
        Operator = { fg = c.ansi[6] },
        Keyword = { fg = c.ansi[6] },
        Exception = { fg = c.ansi[7] },

        PreProc = { fg = c.ansi[6] },
        Include = { fg = c.ansi[6] },
        Define = { fg = c.ansi[6] },
        Macro = { fg = c.ansi[6] },
        PreCondit = { fg = c.ansi[6] },

        Type = { fg = c.ansi[7] },
        StorageClass = { fg = c.ansi[4] },
        Structure = { fg = c.ansi[5] },
        Typedef = { fg = c.ansi[4] },

        Special = { fg = c.ansi[7] },
        SpecialChar = { fg = c.ansi[7] },
        Tag = { fg = c.ansi[5] },
        Delimiter = { fg = c.ansi[5] },
        SpecialComment = { fg = c.ansi[5] },
        Debug = { fg = c.ansi[5] },

        Comment = { fg = c.ansi[5] },
    }

    for group, styles in pairs(groups) do
        vim.api.nvim_set_hl(0, group, styles)
    end
end

return batman
