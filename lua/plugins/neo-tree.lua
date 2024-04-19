return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e","<cmd>Neotree focus<cr>", desc = "Focus NeoTree" },
    { "<leader>E","<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree" },
  },
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = function () 
    require("neo-tree").setup({
      close_if_last_window = true,
      commands = {
        focus_explorer = function()
          require("neo-tree").focus()
        end,
        parent_or_close = function(state)
          local node = state.tree:get_node()
          if (node.type == "directory" or node:has_children()) and node:is_expanded() then
            state.commands.toggle_node(state)
          else
            require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          end
        end,
        child_or_open = function(state)
          local node = state.tree:get_node()
          if node.type == "directory" or node:has_children() then
            if not node:is_expanded() then
              state.commands.toggle_node(state)
            else
              require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
            end
          else
            state.commands.open(state)
          end
        end,
      },
      window = {
        mappings = {
          ["L"] = "focus_preview",
          ["h"] = "parent_or_close",
          ["l"] = "child_or_open", 
        }
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            require("neo-tree").close_all()
          end,
        },
      },
    })
  end
}
