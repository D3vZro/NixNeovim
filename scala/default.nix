{
  imports = [
    ../base/base.nix
  ];

  plugins.lsp.servers.metals = {
    enable = true;
    package = null;
  };
}
