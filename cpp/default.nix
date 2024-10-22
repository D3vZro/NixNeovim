{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    clangd-extensions.enable = true;

    lsp.servers.clangd = {
      enable = true;
      package = null;
    };

    dap = {
      enable = true;
    };
  };
}
