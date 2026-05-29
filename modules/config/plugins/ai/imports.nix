{ config, ... }:
{
  flake.modules.nixvim.ai.imports = with config.flake.modules.nixvim; [
    claude-code
    marp
  ];
}
