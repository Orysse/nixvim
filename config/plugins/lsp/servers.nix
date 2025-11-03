{ pkgs, ... }:
{
  plugins.lsp.servers = {
    lua_ls = {
      enable = true;
    };
    hls = {
      enable = true;
      installGhc = false;
    };
    cmake = {
      enable = true;
    };
    clangd = {
      enable = true;
      extraOptions = {
        capabilities = {
          offsetEncoding = [ "utf-16" ];
        };

        init_options = {
          usePlaceholders = true;
          completeUnimported = true;
          clangdFileStatus = true;
        };
      };
      cmd = [
        "clangd"
        "--background-index"
        "--clang-tidy"
        "--header-insertion=iwyu"
        "--completion-style=detailed"
        "--function-arg-placeholders"
        "--fallback-style=llvm"
      ];
    };
    rust_analyzer = {
      enable = true;
      installCargo = false;
      installRustc = false;
      settings = {
        check = {
          command = "clippy";
        };
      };
    };
    nixd = {
      enable = true;
    };
    ts_ls = {
      enable = true;
    };
    eslint = {
      enable = true;
      extraOptions.settings = {
        workingDirectories.mode = "auto";
      };
    };
    pyright = {
      enable = true;
    };
    gopls = {
      enable = true;
    };
    terraformls = {
      enable = true;
    };
    /*
      ansiblels = {
        enable = true;
      };
    */
    jsonls = {
      enable = true;
    };
    helm_ls = {
      enable = true;
      extraOptions = {
        settings = {
          "helm_ls" = {
            yamlls = {
              path = "${pkgs.yaml-language-server}/bin/yaml-language-server";
            };
          };
        };
      };
    };
    yamlls = {
      enable = true;
      extraOptions = {
        settings = {
          yaml = {
            customTags = [
              "!reference sequence"
            ];
            schemas = {
              kubernetes = "'*.yaml";
              "http://json.schemastore.org/github-workflow" = ".github/workflows/*";
              "http://json.schemastore.org/github-action" = ".github/action.{yml,yaml}";
              "http://json.schemastore.org/ansible-stable-2.9" = "roles/tasks/*.{yml,yaml}";
              "http://json.schemastore.org/kustomization" = "kustomization.{yml,yaml}";
              "http://json.schemastore.org/ansible-playbook" = "*play*.{yml,yaml}";
              "http://json.schemastore.org/chart" = "Chart.{yml,yaml}";
              "https://json.schemastore.org/dependabot-v2" = ".github/dependabot.{yml,yaml}";
              "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                "*docker-compose*.{yml,yaml}";
              "https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json" =
                "*flow*.{yml,yaml}";
              "https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json" =
                "*.gitlab-ci.yml";
            };
          };
        };
      };
    };
    gitlab_ci_ls = {
      enable = true;
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
  ];
}
