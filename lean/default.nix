{
  imports = [
    ../base/base.nix
  ];

  lsp.keymaps = [
    {
      key = "<C-c>";
      action = { __raw = "require('lean.lsp').restart_file"; };
    }
  ];

  plugins.lean = {
    enable = true;
  };
}
