{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vimpair";
      src = pkgs.fetchFromGitHub {
        owner = "derteta";
        repo = "vimpair";
        rev = "d3bbaf72b4598e144ce9155206f0024688b59ad0";
        hash = "sha256-MGRAlH0ke0p7ecPEdrfp3T4Tg2EFjOscu66UBOjNZc0=";
      };
    })
  ];
}
