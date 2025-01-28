{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    nix.enable = true;

    lsp.servers.nil_ls = {
      enable = true;
      package = null;
    };
  };
}
