{
  imports = [
    ../base/base.nix
  ];

  keymaps = [
    {
      key = "<C-c>";
      action = ":VimtexCompile<CR>";
    }
  ];

  plugins = {
    lsp.servers.texlab = {
      enable = true;
      package = null;
    };

    vimtex = {
      enable = true;
      texlivePackage = null;
    };
  };
}
