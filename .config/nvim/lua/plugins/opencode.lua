-- opencode.nvim: Coding-Agent in Neovim, minimal belegt (ot/oa).
-- Quelle: omerxx/dotfiles nvim/lua/plugins/opencode.lua, reduziert auf
-- Toggle + Ask (Rest bei Bedarf dort ergänzen).
-- Design: keine eigenen Farben/Border — erbt single-Border aus minimal.lua.
return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()`, and required for `toggle()` — otherwise optional
    { "folke/snacks.nvim", opts = { input = { enabled = true } } },
  },
  config = function()
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`
    }

    -- Required for `opts.auto_reload`
    vim.opt.autoread = true

    -- Minimal: Toggle + Ask (Rest bei Bedarf aus omerxx/dotfiles ergänzen)
    vim.keymap.set("n", "<leader>ot", function()
      require("opencode").toggle()
    end, { desc = "Toggle embedded" })
    vim.keymap.set("n", "<leader>oa", function()
      require("opencode").ask("@cursor: ")
    end, { desc = "Ask about this" })
    vim.keymap.set("v", "<leader>oa", function()
      require("opencode").ask("@selection: ")
    end, { desc = "Ask about selection" })
  end,
}
