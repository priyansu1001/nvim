return {
  "lambdalisue/vim-suda",
  cmd = { "SudaRead", "SudaWrite" },
  config = function()
    -- Use sudo instead of su
    vim.g.suda_smart_edit = 1

    -- Optional: don’t echo password prompts in command line
    vim.g.suda_prompt = "Password: "
  end,
}
