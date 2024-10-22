{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    nix.enable = true;

    lsp.servers.nil-ls = {
      enable = true;
      package = false;
    };
  };
}
