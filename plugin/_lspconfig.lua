local status,nvim_lsp = pcall(require,'lspconfig')
if (not status) then return end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local opts = {noremap=true,silent=true}

local on_attach = function(client,bufnr)
    
    if client.server_capabilities.documentFormattingProvider then
        vim.cmd([[
            augroup Format
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua vim.lsp.buf.format()            
            augroup END
        ]])
    end
end

local lspServers = {'tsserver','pyright','tailwindcss'}

for _, lsp in pairs(lspServers) do
   nvim_lsp[lsp].setup{
        on_attach=on_attach,
        capabilities=capabilities
    }
end

