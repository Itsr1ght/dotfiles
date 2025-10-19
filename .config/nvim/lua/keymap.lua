local nv = vim;

-- keymap for explorer as 'cd'
nv.keymap.set('n', '<leader>cd', function() nv.cmd('e .') end)
