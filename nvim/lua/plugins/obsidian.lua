return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  keys = {
    { "<leader>on", "<cmd>ObsidianSearch <cr>", { desc = "Open Obsidian Note Picker" } },
    { "<leader>nn", "<cmd>ObsidianNew <cr>", { desc = "Create a new note" } },
    { "<leader>nt", "<cmd>ObsidianToday <cr>", { desc = "Open today's daily note" } },
    { "<leader>ob", "<cmd>ObsidianBacklinks <cr>", { desc = "Open backlinks for current note" } },
    { "<leader>ot", "<cmd>ObsidianTemplate <cr>", { desc = "Insert template" } },
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/ObsidianVault",
      },
    },
    picker = {
      name = "snacks.pick",
    },

    daily_notes = {

      folder = "notes/dailies",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily-notes" },
      template = nil,
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {},
    },
  },
}
