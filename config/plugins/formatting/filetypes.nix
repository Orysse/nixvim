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
    json = [ "jq" ];
    terraform = [ "terraform_fmt" ];
    bicep = [ "bicep" ];
    ocaml = [ "ocamlformat" ];
    "_" = [ "trim_whitespace" ];
    javascriptreact = [ "eslint_d" ];
    "javascript.jsx" = [ "eslint_d" ];
    typescriptreact = [ "eslint_d" ];
    "typescript.txs" = [ "eslint_d" ];
    vue = [ "eslint_d" ];
    svelte = [ "eslint_d" ];
    astro = [ "eslint_d" ];
    nix = [ "nixfmt" ];
  };
}
