{
  imports = [
    ../base/base.nix
  ];

  lsp.keymaps = [
    {
      key = "<leader>gr";
      action =  { __raw = "require('lean.lsp').restart_file()"; };
    }
  ];

  plugins.lean = {
    enable = true;
  };
}
