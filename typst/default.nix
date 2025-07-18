{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.tinymist = {
      enable = true;
    };

    typst-preview = {
      enable = true;
    };
  };
}
