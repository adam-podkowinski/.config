local servers = { 'bashls', 'clangd', 'cssls', 'cssmodules_ls',
    'html', 'rust_analyzer', 'lua_ls', 'texlab',
    'vimls', 'yamlls', 'jsonls', 'cmake', 'tailwindcss', 'prismals', 'svelte', 'ts_ls', 'arduino_language_server',
    'intelephense', 'zls', 'pylsp', 'texlab', 'biome' }

require('mason').setup {}
require("mason-lspconfig").setup {}

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>R', vim.lsp.buf.rename, opts)
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
    }
)
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

require('lspconfig')['volar'].setup {
    capabilities = capabilities,
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
    end,
}

for _, lsp in pairs(servers) do
    OnAtt = function() end
    -- if lsp == 'eslint' then
    --     OnAtt = function(_, bufnr)
    --         vim.api.nvim_create_autocmd("BufWritePre", {
    --             buffer = bufnr,
    --             command = "EslintFixAll",
    --         })
    --     end
    -- end
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
        on_attach = OnAtt,
        settings = {
            ['rust-analyzer'] = {
                diagnostics = {
                    enable = true,
                }
            },
            css = {
                lint = {
                    unknownAtRules = 'ignore',
                }
            },
            scss = {
                lint = {
                    unknownAtRules = 'ignore',
                }
            },
            less = {
                lint = {
                    unknownAtRules = 'ignore',
                }
            },
            intelephense = {
                stubs = { 'wordpress-globals', 'woocommerce', 'polylang', 'genesis', 'wp-cli', 'acf-pro',
                    "apache",
                    "bcmath",
                    "bz2",
                    "calendar",
                    "com_dotnet",
                    "Core",
                    "ctype",
                    "curl",
                    "date",
                    "dba",
                    "dom",
                    "enchant",
                    "exif",
                    "FFI",
                    "fileinfo",
                    "filter",
                    "fpm",
                    "ftp",
                    "gd",
                    "gettext",
                    "gmp",
                    "hash",
                    "iconv",
                    "imap",
                    "intl",
                    "json",
                    "ldap",
                    "libxml",
                    "mbstring",
                    "meta",
                    "mysqli",
                    "oci8",
                    "odbc",
                    "openssl",
                    "pcntl",
                    "pcre",
                    "PDO",
                    "pdo_ibm",
                    "pdo_mysql",
                    "pdo_pgsql",
                    "pdo_sqlite",
                    "pgsql",
                    "Phar",
                    "posix",
                    "pspell",
                    "readline",
                    "Reflection",
                    "session",
                    "shmop",
                    "SimpleXML",
                    "snmp",
                    "soap",
                    "sockets",
                    "sodium",
                    "SPL",
                    "sqlite3",
                    "standard",
                    "superglobals",
                    "sysvmsg",
                    "sysvsem",
                    "sysvshm",
                    "tidy",
                    "tokenizer",
                    "xml",
                    "xmlreader",
                    "xmlrpc",
                    "xmlwriter",
                    "xsl",
                    "Zend OPcache",
                    "zip",
                    "zlib",
                    "wordpress"
                },
                environment = {
                    includePaths = { '/home/adam/.config/composer/vendor/php-stubs/' }
                },
                files = {
                    maxSize = 5000000,
                },
            },
        },
        color = {
            enabled = true,
            background = true,
        },
    }
end

require('lspconfig').emmet_language_server.setup({
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "php" },
})

require('ufo').setup()
