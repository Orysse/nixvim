_: {
  # Import all your configuration modules here
  imports = [
    ./settings.nix
    ./keymaps.nix
    ./autocmd.nix

    ./filetypes.nix

    ./plugins

    ./themes/catppuccin.nix
  ];
}
