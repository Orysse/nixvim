{
  flake.modules.nixvim.snacks-quickfile = {
    plugins.snacks = {
      settings = {
        quickfile = {
          enable = true;
        };
      };
    };
  };
}
