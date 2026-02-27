{
  lib,
  pkgs,
  ...
}:
{
  plugins.conform-nvim.settings.formatters = {
    black.command = lib.getExe pkgs.black;
    isort.command = lib.getExe pkgs.isort;

    nixfmt.command = lib.getExe pkgs.nixfmt;
    alejandra.command = lib.getExe pkgs.alejandra;

    ormolu.command = lib.getExe pkgs.ormolu;
    ocamlformat.command = lib.getExe pkgs.ocamlformat;

    prettierd.command = lib.getExe pkgs.prettierd;
    prettier.command = lib.getExe pkgs.nodePackages.prettier;
    eslint_d.command = lib.getExe pkgs.eslint_d;

    stylua.command = lib.getExe pkgs.stylua;

    shellcheck.command = lib.getExe pkgs.shellcheck;
    shfmt.command = lib.getExe pkgs.shfmt;
    shellharden.command = lib.getExe pkgs.shellharden;

    jq.command = lib.getExe pkgs.jq;
    bicep.command = lib.getExe pkgs.bicep;
    rustfmt.command = lib.getExe pkgs.rustfmt;
  };
}
