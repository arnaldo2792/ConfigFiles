lua <<EOF
telescope=require('telescope')

telescope.load_extension('fzf')

telescope.setup {
  defaults = {
    prompt_prefix = "🔍",
    color_devicons = true
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    }
  }
}
EOF
