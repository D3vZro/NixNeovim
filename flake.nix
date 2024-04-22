{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixvim,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        makeNixvim = a : nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = import a;
        };
      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule {
            inherit pkgs;
            module = import ./default;
            extraSpecialArgs = { };
          };
        };

        packages = {
          # Runnable with 'nix run .'
          default = makeNixvim ./default;
          nvim-latex = makeNixvim ./latex;
          nvim-scala = makeNixvim ./scala;
        };
      };
    };
}
