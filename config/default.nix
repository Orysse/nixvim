_: {
  # Import all your configuration modules here
  imports = [
    ./autocmd.nix
    ./filetypes.nix
    ./keymaps.nix
    ./settings.nix
    ./performance.nix

    ./plugins

    ./themes/catppuccin.nix
  ];
}
