{
  imports = [
    ../base/base.nix
  ];

  autoCmd = [
    {
      event = [ "BufRead" "BufNewFile" ];
      pattern = [ "*.svelte" ];
      callback = { __raw = "function() vim.cmd(\"TSEnable highlight\") end"; };
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
