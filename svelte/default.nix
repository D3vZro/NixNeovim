{
  imports = [
    ../base/base.nix
  ];

  autoCmd = [
    {
      event = [ "BufEnter" "BufWinEnter" ];
      pattern = [ "*.svelte" ];
      callback = "TSEnable highlight";
    }
  ];

  plugins = {
    lsp.servers = {
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
