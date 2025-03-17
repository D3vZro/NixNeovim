{
  imports = [
    ../base/base.nix
  ];

  plugins.lsp.servers.hls = {
    enable = true;
    package = null;
    installGhc = false;
  };
}
