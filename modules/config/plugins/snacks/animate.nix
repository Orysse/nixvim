{
  flake.modules.nixvim.snacks-animate = {
    plugins.snacks = {
      enable = true;
      settings = {
        animate = {
          enable = true;
        };
      };
    };
  };
}
