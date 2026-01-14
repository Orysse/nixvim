{ pkgs, ... }:
{
  plugins.vimtex = {
    enable = true;
    settings = {
      view_method = "zathura";
      syntax_enabled = false;
      syntax_conceal_disable = true;
    };
    texlivePackage = pkgs.texlive.combine {
      inherit (pkgs.texlive) scheme-full;
    };
  };
  autoCmd = [
    {
      command = "syn off";
      event = [
        "BufEnter"
      ];
      pattern = [
        "*.tex"
      ];
    }
  ];
}
