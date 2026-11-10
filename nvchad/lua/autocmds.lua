require "nvchad.autocmds"

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client or client.name ~= "rust_analyzer" then return end

    vim.defer_fn(function()
      if vim.api.nvim_buf_is_valid(args.buf) then
        vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
      end
    end, 1000)

    local progress_handler = vim.lsp.handlers["$/progress"]
    vim.lsp.handlers["$/progress"] = function(err, result, ctx, config)
      progress_handler(err, result, ctx, config)
      if result and result.value and result.value.kind == "end" then
        vim.defer_fn(function()
          if vim.api.nvim_buf_is_valid(args.buf) then
            vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
            vim.lsp.inlay_hint.enable(false, { bufnr = args.buf })
            vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
          end
        end, 100)
      end
    end
  end,
})