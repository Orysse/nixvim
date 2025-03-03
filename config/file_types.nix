{
  autoGroups = {
    filetypes = { };
  };

  files."ftdetect/terraformft.lua".autoCmd = [
    {
      group = "filetypes";
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*.tf"
        " *.tfvars"
        " *.hcl"
      ];
      command = "set ft=terraform";
    }
  ];

  files."ftdetect/tigerft.lua".autoCmd = [
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
