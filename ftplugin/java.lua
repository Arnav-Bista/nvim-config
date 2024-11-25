local keymaps = require('config.keymaps')

-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
-- local workspace_dir = '/home/Arnav/.local/share/nvim/jdtls/' .. project_name


local config = {
    cmd = {
        '/usr/bin/jdtls',
        -- '-data', workspace_dir,
    },
    -- root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw', 'pom.xml', 'javaroot' }, { upward = true })[1]),
    root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew", "pom.xml" }),
    on_attach = keymaps.on_attach,
    settings = {
        java = {
            project = {
                referencedLibraries = {
                    '~/Documents/lib/*'
                }
            }
        }
    },
}


require('jdtls').start_or_attach(config)
