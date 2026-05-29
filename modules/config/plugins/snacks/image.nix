{
  flake.modules.nixvim.snacks-image = {
    plugins.snacks = {
      enable = true;
      settings = {
        image = {
          enable = true;
        };
      };
    };
  };
}
