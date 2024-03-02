-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.textwidth = 160

vim.lsp.buf.format()

local auto_group = vim.api.nvim_create_augroup("LspAuGroup", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    -- highlight references
    if client.server_capabilities.documentHighlightProvider then
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.lsp.buf.document_highlight()
        end,
        group = auto_group,
      })
      vim.api.nvim_create_autocmd("CursorMoved", {
        callback = function()
          vim.lsp.buf.clear_references()
        end,
        group = auto_group,
      })
    end
    -- formatting
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function()
          vim.lsp.buf.format()
        end,
        group = auto_group,
      })
    end
  end,
})

local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local modes = { "n", "v" } -- normal and visual mode

for i in pairs(modes) do
  map(modes[i], "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', opts)
end
