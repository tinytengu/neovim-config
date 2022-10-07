local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n",
  --[[ prefix = "<leader>", ]]
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

local mappings = {
  b = {
    name = "Buffer Line",
    p = {
      ":BufferLinePick<CR>",
      "Pick"
    }
  },
  e = {
    name = "File Explorer",
    e = {
      ":NvimTreeFocus<CR>",
      "Open"
    },
    c = {
      ":NvimTreeClose<CR>",
      "Close"
    }

  },
  f = {
    name = "Files",
    f = {
      ":Telescope find_files<CR>",
      "Find files"
    },
    r = {
      ":Telescope oldfiles<CR>",
      "Recent files"
    },
    n = {
      ":ene <Bar> startinsert <CR>",
      "New file"
    }
  },
  l = {
    name = "LSP",
    ["g"] = {
      name = "Go to ...",
      D = {
        "<cmd>lua vim.lsp.buf.declaration()<CR>",
        "Go to declaration"
      },
      d = {
        "<cmd>lua vim.lsp.buf.definition()<CR>",
        "Go to definition"
      },
      i = {
        "<cmd>lua vim.lsp.buf.implementation()<CR>",
        "Go to implementation"
      },
      r = {
        "<cmd>lua vim.lsp.buf.references()<CR>",
        "Go to references"
      },
    },
    a = {
      "<cmd>lua vim.lsp.buf.code_action()<CR>",
      "Code action"
    },
    r = {
      "<cmd>lua vim.lsp.buf.rename()<CR>",
      "Rename"
    },
    f = {
      ":Format<CR>",
      "Format"
    },
    o = {
      "<cmd>lua vim.diagnostic.open_float()<CR>",
      "Open float"
    }
  },
  m = {
    name = "Markdown",
    p = {
      "<Plug>MarkdownPreview<CR>",
      "Preview"
    },
    s = {
      "<Plug>MarkdownPreviewStop<CR>",
      "Stop preview"
    }
  }
}


whichkey.setup({})
whichkey.register(mappings, opts)
