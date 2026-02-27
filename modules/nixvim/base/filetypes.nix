{
  flake.modules.nixvim.filetypes =
    { lib, ... }:
    {
      filetype = {
        extension =
          lib.genAttrs [ "tf" "tfvars" "hcl" ] (_: "terraform") // lib.genAttrs [ "tig" "tih" ] (_: "tiger");
        pattern = {
        };
      };
    };
}
