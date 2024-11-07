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

        format_after_save = {
          lsp_format = "fallback";
          quiet = false;
          stop_after_first = true;
          timeout_ms = 1000;
        };
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
