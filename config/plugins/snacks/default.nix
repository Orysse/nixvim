_: {
  imports = [
    ./animate.nix
    ./bigfile.nix
    ./dashboard.nix
    ./image.nix
    ./notifier.nix
    ./picker.nix
    # ./quickfile.nix
    ./terminal.nix
    ./words.nix
    ./zen.nix
  ];
  plugins.snacks = {
    enable = true;
  };
}
