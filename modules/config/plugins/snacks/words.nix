{
  flake.modules.nixvim.snacks-words = {
    plugins.snacks = {
      settings = {
        words = {
          enable = true;
          debounce = 300;
        };
      };
    };
  };
}
