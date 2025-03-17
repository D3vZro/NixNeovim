{
  imports = [
    ../base/base.nix
  ];

  plugins.lsp.server.hls = {
    enable = true;
    package = null;
  };
}
