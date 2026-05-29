{ config, ... }:
{
  flake.modules.nixvim.snacks.imports = with config.flake.modules.nixvim; [
    snacks-animate
    snacks-bigfile
    snacks-dashboard
    snacks-image
    snacks-notifier
    snacks-picker
    # snacks-quickfile
    snacks-terminal
    snacks-words
    snacks-zen
  ];
}
