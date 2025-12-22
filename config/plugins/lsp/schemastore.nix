{
  pkgs,
  lib,
  config,
  ...
}:
lib.mkIf config.plugins.lsp.servers.yamlls.enable {
  plugins.yaml-schema-detect = {
    enable = true;
    settings = {
      keymap = {
        refresh = "<leader>yr";
        info = "<leader>yi";
        cleanup = "<leader>yc";
      };
    };
  };

  plugins.schemastore = {
    enable = true;
    yaml = {
      enable = true;
      settings = {
        extra = [
          {
            name = "GitLab CI";
            description = "GitLab CI/CD pipeline configuration";
            fileMatch = [
              ".gitlab-ci/**/*.yaml"
              ".gitlab-ci/**/*.yml"
              "gitlab-ci/**/*.yaml"
              "gitlab-ci/**/*.yml"
            ];
            url = "https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json";
          }
        ];
      };
    };
  };
}
