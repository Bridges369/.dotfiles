local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  pattern = 'NvimTree*',
  callback = function()
    local api = require('nvim-tree.api')
    local view = require('nvim-tree.view')

    if not view.is_visible() then
      api.tree.open()
    end
  end,
})

vim.g.NvimTreeSetup = 0

nvim_tree.setup ({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = true,
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 25,
    -- height = 30,
    -- hide_root_folder = false,
    -- side = "left",
    -- number = false,
    -- relativenumber = false,
    -- mappings = {
    --   custom_only = false,
    --   list = {
    --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
    --     { key = "h", cb = tree_cb "close_node" },
    --     { key = "v", cb = tree_cb "vsplit" },
    --   },
    -- },
  },
  renderer = {
    full_name = true,
    group_empty = true,
    highlight_git = true,
    special_files = {},
    symlink_destination = false,
    root_folder_modifier = ":t",
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        modified = "●",
        bookmark = "󰆤",
        symlink = "",
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          arrow_closed = "│", -- 
          arrow_open = "│", -- 
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      }
    }
  },
})

require'nvim-web-devicons'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    ps1 = {
      icon = "",
      color = "#5E81AC"
    },
    mcfunction = {
      icon = "",
      color = "#5E81AC"
    },
    mcmeta = {
      icon = "",
      color = "#5E81AC"
    }

  };
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true;
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true;
}
