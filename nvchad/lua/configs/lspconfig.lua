require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "clangd", "vtsls", "zls", "asm_lsp" }
vim.lsp.enable(servers)

vim.lsp.config.rust_analyzer = {
  cmd = { "/data/data/com.termux/files/usr/bin/rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", "Cargo.lock", ".git" },
  settings = {
  ["rust-analyzer"] = {
    flyCheck = {
        enable = true,
    },
    inlayHints = {
      enable = true,
      typeHints = true,
      parameterHints = true,
      chainingHints = true,
    },
    diagnostics = {
      enable = true,
      
      disabled = {},

      warningsAsHint = {},
      warningsAsInfo = {},
    },
    checkOnSave = true,
    check = {
      command = "clippy",

      extraArgs = { 
        "--", 
        "-W", "clippy::all",
        --"-W", "clippy::pedantic",
      },
    },
  },
}
}

vim.lsp.enable("rust_analyzer")

vim.lsp.config.omnisharp = {
  cmd = { "/data/data/com.termux/files/home/omnisharp.sh" },
  filetypes = { "cs" },
  root_markers = { "*.sln", "*.csproj", ".git" },
  settings = {
    ["omnisharp"] = {
      FormattingOptions = {
        EnableEditorConfigSupport = true,
        OrganizeImports = true,
      },
      MsBuild = {
        LoadProjectsOnDemand = false,
      },
      RoslynExtensionsOptions = {
        EnableAnalyzersSupport = true,
        EnableImportCompletion = true,
      },
      Sdk = {
        IncludePrereleases = true,
      },
    },
  },
},

vim.lsp.enable("omnisharp")

vim.lsp.inlay_hint.enable(false)
