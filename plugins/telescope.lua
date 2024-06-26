return {
    'nvim-telescope/telescope.nvim',
    dependencies =
    {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>tm', builtin.marks, {})
        vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
    end
}
