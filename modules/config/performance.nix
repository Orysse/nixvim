{
  flake.modules.nixvim.performance = {
    performance = {
      byteCompileLua = {
        enable = true;
        configs = true;
        luaLib = true;
        nvimRuntime = true;
        plugins = true;
      };
    };
  };
}
