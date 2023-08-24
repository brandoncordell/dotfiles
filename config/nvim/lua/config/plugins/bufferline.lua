local bufferline = require('bufferline')

bufferline.setup {
  options = {
    mode = 'tabs',
    seperator_style = 'thick',
    style_preset = {
      bufferline.style_preset.no_bold,
      bufferline.style_preset.no_italic
    },
    tab_size = 20
  }
}