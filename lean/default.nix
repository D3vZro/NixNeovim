{
  imports = [
    ../base/base.nix
  ];

  lsp.keymaps = [
    {
      key = "<leader>R";
      action = "require('lean.lsp').restart_file()";
    }
  ];

  plugins.lean = {
    enable = true;
  };
}
