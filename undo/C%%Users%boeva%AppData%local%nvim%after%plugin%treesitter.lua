Vim�UnDo� �1�*g�n!��!�>+f&uJ�50"pS��              B                       eB��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             eB��     �                   �               5��                        ,                   ,       5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             eB�     �                 ,export TWILIO_ACCOUNT_SID=<YOUR_ACCOUNT_SID>5��                                                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             eB�     �                 6  -- Install parsers synchronously (only applied to `e�               �                   �               5��                       6                   �       �       6           $      �               j      5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             eB�     �   &   (   )      .    additional_vim_regex_highlighting = false,5�5�_�                            ����                                                                                                                                                                                                                                                                                                                            )                      v        eB�    �                 C  -- Install parsers synchronously (only applied to `ensure_install�               �                   �               �               )   (require'nvim-treesitter.configs'.setup {   Z  -- A list of parser names, or "all" (the five listed parsers should always be installed)   >  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },       G  -- Install parsers synchronously (only applied to `ensure_installed`)     sync_install = false,       ?  -- Automatically install missing parsers when entering buffer   W  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally     auto_install = true,       4  -- List of parsers to ignore installing (or "all")   $  ignore_install = { "javascript" },       ^  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)   �  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!         highlight = {       enable = true,       a    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to   g    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is       -- the name of the parser)   -    -- list of language that will be disabled       disable = { "c", "rust" },   h    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files   !    disable = function(lang, buf)   1        local max_filesize = 100 * 1024 -- 100 KB   Q        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))   :        if ok and stats and stats.size > max_filesize then               return true           end       end,       R    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.   Y    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).   ^    -- Using this option may slow down your editor, and you may see some duplicate highlights.   9    -- Instead of true it can also be a list of languages   .    additional_vim_regex_highlighting = false,     },   }5��            (                      d              �                       C                   �       �       C                 �               �      5�_�                             ����                                                                                                                                                                                                                                                                                                                               8                 v       eB��    �                  (require'nvim-treesitter.configs'.setup {   %  -- A list of parser names, or "all"   f  ensure_installed = { "vimdoc", "python","c_sharp", "javascript", "typescript", "c", "lua", "rust" },       G  -- Install parsers synchronously (only applied to `ensure_installed`)     sync_install = false,       ?  -- Automatically install missing parsers when entering buffer   W  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally     auto_install = true,         highlight = {   /    -- `false` will disable the whole extension       enable = true,       R    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.   Y    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).   ^    -- Using this option may slow down your editor, and you may see some duplicate highlights.   9    -- Instead of true it can also be a list of languages   .    additional_vim_regex_highlighting = false,     },   }5�5��