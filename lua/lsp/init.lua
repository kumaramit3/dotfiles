local nvim_lsp=require('lspconfig')
local capabilities=require('cmp_nvim_lsp').default_capabilities()

local opts = {noremap=true,silent=true}

local on_attach = function(client,bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr,...) end
    
    buf_set_keymap('n','gD','<cmd> lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n','gd','<cmd> :tabnew<CR> <cmd> lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n','gi','<cmd> lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n','<space>D','<cmd> lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n','K','<cmd> lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n','<space>rn','<cmd> lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n','gr','<cmd> lua vim.lsp.buf.references()<CR>', opts)

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
