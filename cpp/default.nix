{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.clangd.enable = true;
    dap.enable = true;
  };
}
