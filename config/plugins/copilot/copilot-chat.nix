{
  plugins.copilot-chat = {
    enable = true;

    settings = {
      context = "buffers";
    };
  };
  keymaps = [
    {
      key = "<leader>ce";
      action = ":CopilotChatExplain<CR>";
      mode = "v";
    }
    {
      key = "<leader>cr";
      action = ":CopilotChatReview<CR>";
      mode = "v";
    }
    {
      key = "<leader>cf";
      action = ":CopilotChatFix<CR>";
      mode = "v";
    }
    {
      key = "<leader>co";
      action = ":CopilotChatOptimize<CR>";
      mode = "v";
    }
    {
      key = "<leader>cd";
      action = ":CopilotChatDocs<CR>";
      mode = "v";
    }
    {
      key = "<leader>ct";
      action = ":CopilotChatTests<CR>";
      mode = "v";
    }
  ];
}
