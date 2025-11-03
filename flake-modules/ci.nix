{ inputs, ... }:
{
  herculesCI.ciSystems = [
    "x86_64-linux"
    "aarch64-linux"
    "x86_64-darwin"
    "aarch64-darwin"
  ];

  # Additional Hercules CI configuration can go here
  perSystem =
    { system, ... }:
    {
      # Jobs that Hercules CI will run
      # By default it will build all checks, packages, and devShells
    };
}
