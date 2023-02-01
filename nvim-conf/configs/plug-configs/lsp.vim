set completeopt=menuone,noinsert,noselect

lua <<EOF
local rt = require('rust-tools')

local opts = {
  hover_actions = {
    auto_focus = true,
  },
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
    end,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy"
        },
      }
    }
  },
}

rt.setup(opts)

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

require'lspconfig'.gopls.setup{}
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
