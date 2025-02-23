{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>y";
      action = "\"+y";
      options = {
        desc = "next greatest remap ever : asbjornHaland";
      };
    }
    {
      mode = [
        "n"
      ];
      key = "<leader>Y";
      action = "\"+Y";
      options = {
        desc = "next greatest remap ever : asbjornHaland";
      };
    }
    {
      mode = "n";
      key = "<A-j>";
      action = "<cmd>m .+1<cr>==";
      options = {
        desc = "Move Down";
      };
    }
    {
      mode = "n";
      key = "<A-k>";
      action = "<cmd>m .-2<cr>==";
      options = {
        desc = "Move Up";
      };
    }
    {
      mode = "i";
      key = "<A-j>";
      action = "<esc><cmd>m .+1<cr>==gi";
      options = {
        desc = "Move Down";
      };
    }
    {
      mode = "i";
      key = "<A-k>";
      action = "<esc><cmd>m .-2<cr>==gi";
      options = {
        desc = "Move Up";
      };
    }
    {
      mode = "v";
      key = "<A-j>";
      action = ":m '>+1<cr>gv=gv";
      options = {
        desc = "Move Down";
      };
    }
    {
      mode = "v";
      key = "<A-k>";
      action = ":m '<-2<cr>gv=gv";
      options = {
        desc = "Move Up";
      };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "vim.diagnostic.open_float";
      options = {
        desc = "Line Diagnostics";
      };
    }
    {
      mode = "n";
      key = "]d";
      action = "diagnostic_goto(true)";
      options = {
        desc = "Next Diagnostic";
      };
    }
    {
      mode = "n";
      key = "[d";
      action = "diagnostic_goto(false)";
      options = {
        desc = "Prev Diagnostic";
      };
    }
    {
      mode = "n";
      key = "]e";
      action = "diagnostic_goto(true 'ERROR')";
      options = {
        desc = "Next Error";
      };
    }
    {
      mode = "n";
      key = "[e";
      action = "diagnostic_goto(false 'ERROR')";
      options = {
        desc = "Prev Error";
      };
    }
    {
      mode = "n";
      key = "]w";
      action = "diagnostic_goto(true 'WARN')";
      options = {
        desc = "Next Warning";
      };
    }
    {
      mode = "n";
      key = "[w";
      action = "diagnostic_goto(false 'WARN')";
      options = {
        desc = "Prev Warning";
      };
    }
    {
      mode = "n";
      key = "-";
      action = "<CMD>Oil<CR>";
      options = {
        desc = "Open Oil";
      };
    }
    {
      mode = [
        "n"
        "v"
        "i"
      ];
      key = "<UP>";
      action = "<NOP>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
        "i"
      ];
      key = "<DOWN>";
      action = "<NOP>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
        "i"
      ];
      key = "<LEFT>";
      action = "<NOP>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
        "i"
      ];
      key = "<RIGHT>";
      action = "<NOP>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
