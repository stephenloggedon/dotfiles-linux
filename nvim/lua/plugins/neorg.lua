return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.journal"] = {
          config = {
            journal_folder = "journal",
            workspace = "journal",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              journal = "~/blog",
              notes = "~/notes",
            },
            index = "index.neorg",
            default_workspace = "notes",
          },
        },
      },
    },
  },
}
