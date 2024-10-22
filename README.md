# NixNeovim - Composable neovim configs

This repo includes various neovim configs using [Nixvim](https://github.com/nix-community/nixvim).
They mostly switch up the LSP server or include plugins useful for the given environment.

## Usage

The editors themselves may be bound into a devshell. Some examples can be found in this
[repo](https://github.com/D3vZro/Devshells). Otherwise, you can run `nix run github:D3vZro/NixNeovim#<PACKAGE>` with
`<PACKAGE>` being the desired config matching the directory names (e.g. `nix`).

- The functionality besides `default` is quite limited. The configs themselves will not ship with any other packages!

- Everything here is extremly opinionated
