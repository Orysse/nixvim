_: {
  plugins.conform-nvim.settings.formatters_by_ft = {
    html = [ "prettierd" ];
    css = [ "prettierd" ];
    javascript = [ "prettierd" ];
    typescript = [ "prettierd" ];
    markdown = [ "prettierd" ];
    yaml = [ "prettierd" ];
    python = [
      "black"
      "isort"
    ];
    c = [ "clang-format" ];
    cpp = [ "clang-format" ];
    rust = [ "rustfmt" ];
    lua = [ "stylua" ];
    bash = [
      "shellcheck"
      "shellharden"
      "shfmt"
    ];
    nix = [ "nixfmt-rfc-style" ];
    json = [ "jq" ];
    terraform = [ "terraform_fmt" ];
    bicep = [ "bicep" ];
    ocaml = [ "ocamlformat" ];
    "_" = [ "trim_whitespace" ];
  };
}
