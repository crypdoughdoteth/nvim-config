Vim�UnDo� ��q���W���pϪ�'s���p�=n"�a�J   |       |                           ep�$    _�                      |        ����                                                                                                                                                                                                                                                                                                                                                             ep�$    �   |   }        �   {   }       7   -- default configuration   !require('illuminate').configure({   T    -- providers: provider used to get references in the buffer, ordered by priority       providers = {           'lsp',           'treesitter',           'regex',       },   #    -- delay: delay in milliseconds       delay = 100,   7    -- filetype_overrides: filetype specific overrides.   V    -- The keys are strings to represent the filetype while the values are tables that   h    -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist       filetype_overrides = {},   Z    -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist       filetypes_denylist = {           'dirbuf',           'dirvish',           'fugitive',       },   ]    -- filetypes_allowlist: filetypes to illuminate, this is overridden by filetypes_denylist   p    -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect       filetypes_allowlist = {},   N    -- modes_denylist: modes to not illuminate, this overrides modes_allowlist   -    -- See `:help mode()` for possible values       modes_denylist = {},   Q    -- modes_allowlist: modes to illuminate, this is overridden by modes_denylist   -    -- See `:help mode()` for possible values       modes_allowlist = {},   q    -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist   +    -- Only applies to the 'regex' provider   N    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')   )    providers_regex_syntax_denylist = {},   t    -- providers_regex_syntax_allowlist: syntax to illuminate, this is overridden by providers_regex_syntax_denylist   +    -- Only applies to the 'regex' provider   N    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')   *    providers_regex_syntax_allowlist = {},   B    -- under_cursor: whether or not to illuminate under the cursor       under_cursor = true,   K    -- large_file_cutoff: number of lines at which to use large_file_config   D    -- The `under_cursor` option is disabled when this cutoff is hit       large_file_cutoff = nil,   U    -- large_file_config: config to use for large files (based on large_file_cutoff).   2    -- Supports the same keys passed to .configure   ?    -- If nil, vim-illuminate will be disabled for large files.       large_file_overrides = nil,   Y    -- min_count_to_highlight: minimum number of matches required to perform highlighting       min_count_to_highlight = 1,   E    -- should_enable: a callback that overrides all other settings to   I    -- enable/disable illumination. This will be called a lot so don't do        -- anything expensive in it.   4    should_enable = function(bufnr) return true end,   :    -- case_insensitive_regex: sets regex case sensitivity   #    case_insensitive_regex = false,   })5��    {               6      E              �
      5��