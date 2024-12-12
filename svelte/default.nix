{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers {
      ts_ls = {
        enable = true;
        package = null;
      };

      svelte = {
        enable = true;
        package = null;
      };

      tailwindcss = {
        enable = true;
        package = null;
      };
    };
  };
}
