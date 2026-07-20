{
  imports = [
    ../base/base.nix
  ];

  lsp.keymaps = [
    {
      key = "<C-c>";
      action = { __raw = "require('lean.lsp').restart_file"; };
    }
    {
      key = "<leader>tt";
      action = ":LeanInfoviewToggle<CR>";
    }
  ];

  plugins.lean = {
    enable = true;
  };
}
