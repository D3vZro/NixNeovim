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
    lsp.servers.texlab.enable = true;
    vimtex.enable = true;
  };

  extraConfigLua = ''
    vim.g.vimtex_syntax_enable = 0
  '';
}
