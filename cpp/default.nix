{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    clangd-extensions.enable = true;

    conform-nvim = {
      enable = true;

      settings = {
        formatters_by_ft.cpp = [ "clang_format" ];
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
