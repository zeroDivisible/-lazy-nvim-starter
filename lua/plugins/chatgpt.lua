return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>aa",
      "<cmd>ChatGPT<CR>",
      desc = "ChatGPT",
    },
    {
      "<leader>ae",
      "<cmd>ChatGPTEditWithInstruction<CR>",
      desc = "Edit with instructions",
      mode = { "n", "v" },
    },
    {
      "<leader>ac",
      "<cmd>ChatGPTCompleteCode<CR>",
      desc = "Complete Code",
      mode = { "n", "v" },
    },
  },
  config = function()
    require("chatgpt").setup({
      openai_params = {
        model = "gpt-4o",
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 300,
        temperature = 0,
        top_p = 1,
        n = 1,
      },
      openai_edit_params = {
        model = "gpt-4o",
        frequency_penalty = 0,
        presence_penalty = 0,
        temperature = 0,
        top_p = 1,
        n = 1,
      },
    })
  end,
}
