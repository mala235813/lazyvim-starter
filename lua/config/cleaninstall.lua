vim.api.nvim_create_user_command("CleanInstall", function()
  local paths = {
    vim.fn.stdpath("data"),   -- ~/.local/share/nvim
    vim.fn.stdpath("state"),  -- ~/.local/state/nvim
    vim.fn.stdpath("cache"),  -- ~/.cache/nvim
    vim.fn.stdpath("config") .. "/lazy-lock.json",
  }

  -- Confirm with the user
  vim.ui.select({ "Yes", "No" }, {
    prompt = "Are you sure you want to DELETE all plugin/cache/state data and exit Neovim?",
  }, function(choice)
    if choice ~= "Yes" then
      return
    end

    -- Delete paths
    for _, path in ipairs(paths) do
      vim.fn.delete(path, "rf")
    end

    print("✔ All runtime data deleted. Exiting Neovim...")
    vim.cmd("qa!") -- force quit all
  end)
end, {
  desc = "Delete all plugin/cache/state data and quit Neovim",
})
