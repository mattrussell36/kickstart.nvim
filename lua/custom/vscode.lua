-- Module for handling vscode specific shortcuts and functionality

local M = {}

function M.init()
  local vscode = require 'vscode'

  vim.keymap.set('n', '<leader>p', function()
    vscode.action 'workbench.action.quickOpen'
  end, { desc = 'Opens vscode fuzzy finder' })

  vim.keymap.set('n', '<leader>t', function()
    vscode.action 'workbench.action.toggleSidebarVisibility'
  end, { desc = 'Toggle primary sidebar' })

  vim.keymap.set('n', '<leader>T', function()
    vscode.action 'revealInExplorer'
  end, { desc = 'Reveal file in explorer' })

  vim.keymap.set('n', '<leader>tt', function()
    vscode.action 'workbench.action.togglePanel'
  end, { desc = 'Toggle bottom panel (terminal)' })

  vim.keymap.set('n', '[d', function()
    vscode.action 'editor.action.marker.prev'
  end, { desc = 'Go to previous [D]iagnostic message' })

  vim.keymap.set('n', ']d', function()
    vscode.action 'editor.action.marker.next'
  end, { desc = 'Go to next [D]iagnostic message' })

  vim.keymap.set('n', '<leader>e', function()
    vscode.action 'editor.action.showHover'
  end, { desc = 'Show hover' })

  vim.keymap.set('n', 'gr', function()
    vscode.action 'editor.action.goToReferences'
  end, { desc = '[G]o to [R]eferences' })

  vim.keymap.set('n', '<leader>w', function()
    vscode.action 'workbench.action.closeActiveEditor'
  end, { desc = 'Close active editor' })

  vim.keymap.set('n', '<leader>rn', function()
    vscode.action 'editor.action.rename'
  end, { desc = '[R]e[N]ame symbol' })

  vim.keymap.set('n', '<leader><leader>', function()
    vscode.action 'workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup'
  end, { desc = 'Show recently used files' })

  vim.keymap.set('n', '<leader>bb', function()
    vscode.action 'workbench.action.quickOpenNavigateNextInEditorPicker'
  end, { desc = 'Calls cycles previous editor' })
end

return M
