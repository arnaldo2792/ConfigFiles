" loading the plugin
let g:webdevicons_enable = 1

lua <<EOF
require'nvim-web-devicons'.setup {
  color_icons = true;
  default = true;
}
EOF
