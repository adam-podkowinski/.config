-- Treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true,              -- false will disable the whole extension
    },
    indent = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        colors = {
            "#ffdf01",
            "#da70d6",
            "#87cefa",
            "#37bf3e",
            "#1489e1"
        },
    }
}

-- Lualine
local custom_material_stealth = require'lualine.themes.material-stealth';
custom_material_stealth.normal.b.bg = '#242839'
custom_material_stealth.inactive.b.bg = '#242839'
custom_material_stealth.insert.b.bg = '#242839'
custom_material_stealth.replace.b.bg = '#242839'
custom_material_stealth.command.b.bg = '#242839'
require('lualine').setup{
  options = {
    theme = custom_material_stealth,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    globalstatus = true,
  },
};

-- Telescope
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--hidden',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' 🔍 ',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,

        mappings = {
            i = {
                ["<c-k>"] = actions.move_selection_previous,
                ["<c-j>"] = actions.move_selection_next
            }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

-- Bufferline
require'bufferline'.setup{
    options = {
        always_show_bufferline = false
    }
}
require('gitsigns').setup()
require('telescope').load_extension('fzy_native')
require('nvim-tree').setup({
  indent_markers = true,
});
require('rest-nvim').setup();
require('indent_blankline').setup {
  show_current_context = true,
}
