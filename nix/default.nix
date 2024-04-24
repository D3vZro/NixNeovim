{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.nil_ls.enable = true;
    nix.enable = true;
  };
}
