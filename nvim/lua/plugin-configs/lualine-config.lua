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

