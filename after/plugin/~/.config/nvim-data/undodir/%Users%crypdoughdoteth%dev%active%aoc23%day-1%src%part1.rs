Vim�UnDo� 䥃���)`�7R5{�~.=x�{�D�*Ȯo��o      
    Ok(fa)                             ep�    _�                            ����                                                                                                                                                                                                                                                                                                                               
          
       V   
    ep�x    �               =pub fn partone() -> Result<u32, Box<dyn std::error::Error>> {5��                                               �                                               �                                               �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       ep�     �             �            4    -- Completion Plugin Setup   local cmp = require'cmp'   cmp.setup({     -- Enable LSP snippets     snippet = {       expand = function(args)   ,        vim.fn["vsnip#anonymous"](args.body)       end,     },     mapping = {   /    ['<C-p>'] = cmp.mapping.select_prev_item(),   /    ['<C-n>'] = cmp.mapping.select_next_item(),       -- Add tab support   1    ['<S-Tab>'] = cmp.mapping.select_prev_item(),   /    ['<Tab>'] = cmp.mapping.select_next_item(),   .    ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),   +    ['<C-f>'] = cmp.mapping.scroll_docs(4),   +    ['<C-Space>'] = cmp.mapping.complete(),   $    ['<C-e>'] = cmp.mapping.close(),   $    ['<CR>'] = cmp.mapping.confirm({   ,      behavior = cmp.ConfirmBehavior.Insert,         select = true,       })     },     -- Installed sources:     sources = {   A    { name = 'path' },                              -- file paths   K    { name = 'nvim_lsp', keyword_length = 3 },      -- from language server   t    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized   g    { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*   L    { name = 'buffer', keyword_length = 2 },        -- source current buffer   U    { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip    R    { name = 'calc'},                               -- source for math calculation     },     window = {   0      completion = cmp.config.window.bordered(),   3      documentation = cmp.config.window.bordered(),     },     formatting = {   (      fields = {'menu', 'abbr', 'kind'},   $      format = function(entry, item)             local menu_icon ={                 nvim_lsp = 'λ',                 vsnip = '⋗',                 buffer = 'Ω',                 path = '🖫',             }   2          item.menu = menu_icon[entry.source.name]             return item   
      end,     },   })   Ok(fa)5��                  3      $                     5�_�                          ����                                                                                                                                                                                                                                                                                                                               
          
       V   
    ep˷     �               pub fn partonu5��              0                 0              5�_�                           ����                                                                                                                                                                                                                                                                                                                               
          
       V   
    ep˵     �               pub fn parton 5��              0                 0              5��