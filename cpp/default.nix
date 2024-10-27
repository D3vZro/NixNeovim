{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    clangd-extensions.enable = true;

    lsp-format.settings = {
      cpp = {
        tap_width = 4;
      };
    };

    lsp.servers.clangd = {
      enable = true;
      package = null;
    };

    dap = {
      enable = true;
    };
  };
}
