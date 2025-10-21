_:
let
  prettier = {
    __unkeyed-1 = "prettierd";
    __unkeyed-2 = "prettier";
    stop_after_first = true;
  };
in
{
  plugins.conform-nvim.settings.formatters_by_ft = {
    html = prettier;
    css = prettier;
    javascript = prettier;
    typescript = prettier;
    markdown = prettier;
    yaml = prettier;
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
    "_" = [ "trim_whitespace" ];
  };
}
