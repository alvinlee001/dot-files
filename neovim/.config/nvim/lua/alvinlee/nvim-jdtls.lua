-- If you started neovim within `~/dev/xy/project-1` this would resolve to `project-1`
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local workspace_dir = '/home/matsu/workspace/' .. project_name
--                                               ^^
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {

    'java', -- or '/path/to/java11_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    --'--add-modules', 'jdk.incubator.foreign',
    --'--add-modules', 'jdk.incubator.vector',

    -- 💀
    '-jar', vim.fn.glob('~/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
         -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
         -- Must point to the                                                     Change this to
         -- eclipse.jdt.ls installation                                           the actual version


    -- 💀
    '-configuration', '/home/matsu/Tools/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
                    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                    -- Must point to the                      Change to one of `linux`, `win` or `mac`
                    -- eclipse.jdt.ls installation            Depending on your system.


    -- 💀
    -- See `data directory configuration` section in the README
    --'-data', workspace_dir
  },

  -- 💀
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
        completion = {
            favoriteStaticMembers = {
                "org.hamcrest.MatcherAssert.assertThat",
                "org.hamcrest.Matchers.*",
                "org.hamcrest.CoreMatchers.*",
                "org.junit.jupiter.api.Assertions.*",
                "java.util.Objects.requireNonNull",
                "java.util.Objects.requireNonNullElse",
                "org.mockito.Mockito.*"
            },
            filteredTypes = {
                "com.sun.*",
                "java.awt.*",
                "jdk.*",
                "sun.*",
            },
        };
    }
  },
  init_options = {
    bundles = {
    }
  },


  on_attach = function(client, bufnr)
    local jdtls = require('jdtls')
    jdtls.setup_dap({ hotcodereplace = 'auto' })
    jdtls.setup.add_commands()
  end,

}



-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)

-- Custom picker for jdtls

local finders = require'telescope.finders'
local sorters = require'telescope.sorters'
local actions = require'telescope.actions'
local pickers = require'telescope.pickers'
local action_state = require'telescope.actions.state'
local cursor_theme = require'telescope.themes'.get_cursor

require('jdtls.ui').pick_one_async = function(items, prompt, label_fn, cb)
  local opts = cursor_theme{}
  local iterator = 0
  pickers.new(opts, {
    prompt_title = prompt,
    finder    = finders.new_table {
      results = items,
      entry_maker = function(entry)
        iterator = iterator + 1
        return {
          value = entry,
          display = tostring(iterator) .. ": " .. label_fn(entry),
          ordinal = label_fn(entry),
        }
      end,
    },
    sorter = sorters.get_generic_fuzzy_sorter(),
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry(prompt_bufnr)

        actions.close(prompt_bufnr)

        cb(selection.value)
      end)

      return true
    end,
  }):find()
end

local function buf_set_keymap(mode, lhs, rhs, opts)
  vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end
--local function buf_set_keymap(...) vim.api._keymap(bufnr, ...) end
--
--
local opts = { noremap=true, silent=true }
buf_set_keymap('n', '<space>oi', '<Cmd>lua require\'jdtls\'.organize_imports()<CR>', opts)
buf_set_keymap('v', '<space>em', '<Esc><Cmd>lua require\'jdtls\'.extract_method(true)<CR>', opts)
buf_set_keymap('n', '<space>ev', '<Esc><Cmd>lua require\'jdtls\'.extract_variable()<CR>', opts)
buf_set_keymap('v', '<space>ev', '<Esc><Cmd>lua require\'jdtls\'.extract_variable(true)<CR>', opts)
buf_set_keymap('n', '<space>ec', "<cmd>lua require'jdtls'.extract_constant()<CR>", opts)
buf_set_keymap('v', '<space>ec', ":lua require'jdtls'.extract_constant(true)<CR>", opts)
buf_set_keymap('n', '<space>uj', '<Esc><Cmd>lua require(\'jdtls\').update_project_config()<CR>', opts)
buf_set_keymap('n', '<space>tm', '<Esc><Cmd>lua require(\'jdtls\').test_nearest_method()<CR>', opts)
buf_set_keymap('n', '<space>tc', '<Esc><Cmd>lua require(\'jdtls\').test_class()<CR>', opts)


-- local function create_user_cmd(cmd, action, opt)
--   vim.api.(cmd, action, opt)
-- end

-- create_user_cmd('JdtCompile',      "lua require('jdtls').compile()",               {})
-- create_user_cmd('JdtUpdateConfig', "lua require('jdtls').update_project_config()", {})
-- create_user_cmd('JdtJol',          "lua require('jdtls').jol()",                   {})
-- create_user_cmd('JdtBytecode',     "lua require('jdtls').javap()",                 {})
-- create_user_cmd('JdtJshell',       "lua require('jdtls').jshell()",                {})


