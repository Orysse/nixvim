{
  flake.modules.nixvim.snacks-bigfile = {
    plugins.snacks = {
      enable = true;
      settings = {
        bigfile = {
          enable = true;
        };
      };
    };
  };
}
