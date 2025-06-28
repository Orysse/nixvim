{
  pkgs,
  system,
  ...
}:
{
  plugins = {
    lsp-lines = {
      enable = true;
    };
    lsp-format = {
      enable = true;
    };
    helm = {
      enable = true;
    };
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
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
        /*
          jdtls = {
            enable = true;
          };
        */
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
        ansiblels = {
          enable = true;
        };
        jsonls = {
          enable = true;
        };
	ocamllsp {
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
                };
              };
            };
          };
        };
      };

      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
  ];

  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }

    local opts = { noremap=true, silent=true }

    local function quickfix()
        vim.lsp.buf.code_action({
            filter = function(a) return a.isPreferred end,
            apply = true
        })
    end

    vim.keymap.set('n', '<leader>qf', quickfix, opts)
  '';
}
