{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.svelte = {
      enable = true;
      package = null;
    };

    lsp.servers.tailwindcss = {
      enable = true;
      package = null;
    };
  };
}
