set completeopt=menuone,noinsert,noselect

lua <<EOF
local opts = {
  tools = {
      autoSetHints = true,
      hover_with_actions = true,
      inlay_hints = {
        show_parameter_hints = false,
        parameter_hints_prefix = "",
        other_hints_prefix = "",
      },
  },
  server = {
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy"
        },
      }
    }
  },
}

require('rust-tools').setup(opts)

require'lspconfig'.ltex.setup({
  filetypes = { "gitcommit", "markdown", "plaintext", "go", "rust" },
  settings = {
    ltex = {
      checkFrequency = "edit",
      enabled = { "markdown", "html", "latex", "go", "rust" }
    }
  }
 }
)
EOF

" Format on save in rust files
augroup lsp
  autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)
  " Show diagnostic popup on cursor hold
  autocmd CursorHold *.rs lua vim.diagnostic.open_float(nil, { focusable = false })
augroup END

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
