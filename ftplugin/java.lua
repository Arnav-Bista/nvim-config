local keymaps = require('custom.core.keymaps')
local config = {
    cmd = {
        '/usr/bin/jdtls'
    },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw', 'pom.xml'}, { upward = true })[1]),
    on_attach = keymaps.on_attach
}
require('jdtls').start_or_attach(config)

