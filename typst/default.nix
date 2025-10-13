{
  imports = [
    ../base/base.nix
  ];

  plugins = {
    lsp.servers.tinymist = {
      enable = true;
    };

    typst-vim = {
      enable = true;

      settings = {
        pdf_viewer = "zathura";
      };
    };
  };
}
