{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.nil-ls.enable = true;
    nix.enable = true;
  };
}
