{
  imports = [
    ../base/base.nix
  ];

  keymaps = [
    {
      key = "<C-c>";
      action = ":TypstWatch<CR>";
    }
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
