{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.svelte = {
      enable = true;
      package = null;
    };

    lsp.servers.tailwind = {
      enable = true;
      package = null;
    };
  };
}
