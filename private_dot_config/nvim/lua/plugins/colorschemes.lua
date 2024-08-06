-- Ce fichier devrait être placé dans ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  -- Ajoutez les plugins des thèmes
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "folke/tokyonight.nvim", priority = 1000 },

  -- Configurez LazyVim pour utiliser le thème approprié
  {
    "LazyVim/LazyVim",
    opts = function()
      -- Fonction pour obtenir le thème système macOS
      local function get_macos_theme()
        local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
        if handle then
          local result = handle:read("*a")
          handle:close()
          return result:match("Dark") and "dark" or "light"
        end
        return "light" -- Par défaut si on ne peut pas détecter
      end

      -- Définir le thème en fonction du thème système
      local system_theme = get_macos_theme()
      if system_theme == "dark" then
        return {
          colorscheme = "catppuccin-mocha",
        }
      else
        return {
          -- colorscheme = "tokyonight-day",
          colorscheme = "deepwhite",
        }
      end
    end,
  },

  -- Configuration optionnelle pour le thème Catppuccin
  {
    "catppuccin/nvim",
    opts = {
      flavour = "mocha", -- Vous pouvez changer cela si vous préférez une autre variante sombre
    },
  },

  -- Configuration optionnelle pour le thème Tokyo Night
  {
    -- "folke/tokyonight.nvim",
    "Verf/deepwhite.nvim",
    -- opts = {
    --  style = "day",
    -- },
  },
}
