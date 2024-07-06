return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        color_overrides = {
          all = {
            base = "#232323",
            crust = "#171717",
            mantle = "#202020",
          },
          latte = {},
          frappe = {},
          macchiato = {},
          mocha = {},
        }
      }
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}
