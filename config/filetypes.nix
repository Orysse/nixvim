{
  autoGroups = {
    filetypes = {
      clear = true; # Clear existing autocmds in this group
    };
  };

  autoCmd = [
    {
      group = "filetypes";
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*.tf"
        "*.tfvars"
        "*.hcl"
      ];
      command = "set ft=terraform";
    }
    {
      group = "filetypes";
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*.tig"
        "*.tih"
      ];
      command = "set ft=tiger";
    }
  ];
}
