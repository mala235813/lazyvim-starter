-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.image = {
      enabled = true,
      backend = "kitty",
    }

    opts.statuscolumn = {
      enabled = true,
    }
  end,
}
