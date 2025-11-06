local function setFormater()
  local biome_config_found = vim.fn.findfile("biome.json", vim.fn.getcwd() .. ";") ~= ""
  if biome_config_found then
    return { "biome" }
  else
    return { "prettierd" }
  end
end
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = setFormater(),
      typescript = setFormater(),
      javascriptreact = setFormater(),
      typescriptreact = setFormater(),
      html = setFormater(),
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    format_after_save = function()
      local t_attached = vim.tbl_contains(
        vim.tbl_map(function(c)
          return c.name
        end, vim.lsp.get_clients()),
        "tailwindcss"
      )
      if not t_attached or not pcall(require, "tailwind-tools") then
        return
      end

      vim.cmd("TailwindSort")
      return { lsp_format = "fallback" }
    end,
  },
}
