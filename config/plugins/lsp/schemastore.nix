{
  pkgs,
  lib,
  config,
  ...
}:
lib.mkIf config.plugins.lsp.servers.yamlls.enable {
  plugins.schemastore = {
    enable = true;
    yaml = {
      enable = true;
      settings = {
        schemas = {
          "https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json" = [
            ".gitlab-ci.yml"
            ".gitlab-ci/**/*.yml"
            ".gitlab-ci/**/*.yaml"
            "gitlab-ci/**/*.yml"
            "gitlab-ci/**/*.yaml"
          ];
        };
      };
    };
  };
}
