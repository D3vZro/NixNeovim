{ pkgs, ... }:

{
  enableMan = false;

  globals.mapleader = " ";
  globals.maplocalleader = ",";
  clipboard.register = "unnamedplus";

  extraPackages = with pkgs; [
    ripgrep
    fd
  ];

  autoCmd = [
    {
      event = [ "TextYankPost" ];
      callback = { __raw = "function() vim.highlight.on_yank() end"; };
    }
  ];

  keymaps = [
    {
      key = "<C-O>";
      action = "o<Esc>";
    }
    {
      key = "<C-e>";
      action = ":NvimTreeToggle<CR>";
    }
  ];

  opts = {
    conceallevel = 1;
    expandtab = true;
    ignorecase = true;
    mouse = null;
    number = true;
    relativenumber = true;
    shiftwidth = 2;
    smartcase = true;
    title = true;
    titlelen = 0;
    titlestring = "nvim";
    foldenable = false;
  };

  extraConfigLua = ''
    vim.g.vimtex_syntax_enabled = 0
  '';

  colorschemes.nord = {
    enable = true;
    settings = {
      borders = true;
      contrast = true;
    };
  };

  plugins = {
    auto-save.enable = true;
    cursorline.enable = true;
    gitgutter.enable = true;
    luasnip.enable = true;
    vim-surround.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;

    # Single LSP plugins, the real config is below
    # lsp-format.enable = true;
    lspkind.enable = true;
    lsp-lines.enable = true;

    leap = {
      enable = true;
    };

    indent-blankline = {
      enable = true;

      settings = {
        exclude = {
          buftypes = [
            "terminal"
            "quickfix"
          ];

          filetypes = [
            ""
            "checkhealth"
            "help"
            "lspinfo"
            "TelescopePrompt"
            "TelescopeResults"
          ];
        };

        scope = {
          show_start = false;
          show_exact_scope = true;
          show_end = false;
        };
      };
    };

    treesitter = { 
      enable = true;
      folding = true;
      nixvimInjections = true;
      settings.indent.enable = true;
    };

    lsp = {
      enable = true;

      keymaps = {
        diagnostic = {
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
        };

        lspBuf = {
          "K" = "hover";
          "gr" = "references";
          "gd" = "definition";
          "gi" = "implementation";
          "gD" = "type_definition";
        };
      };
    };

    cmp = {
      enable = true;

      settings = {
        performance = {
          max_view_entries = 50;
          throttle = 50;
        };

        snippet.expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';

        mapping = {
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-j>" = "cmp.mapping.select_next_item()";
        };

        sources = [
          { name = "buffer"; }
          { name = "nvim_lsp"; }
          { name = "path"; }
        ];
      };
    };

    telescope = {
      enable = true;
      extensions.fzf-native.enable = true;
      
      keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
        "<leader>fb" = "buffers";
        "<leader>fh" = "help_tags";
      };
    };

    lualine = {
      enable = true;

      settings = {
        options = {
          disabled_filetypes.statusline = [ "NvimTree" ];
          globalstatus = true;
          ignoreFocus = [ "NvimTree" ];
        };

        sections = {
          lualine_a = ["mode"];
          lualine_b = ["branch" "diff"];
          lualine_c = ["searchcount" "selectioncount"];
          lualine_x = ["filetype"];
          lualine_y = ["progress"];
          lualine_z = ["location" ];
        };

        tabline = {
          lualine_a = ["hostname"];
          lualine_b = ["windows"];
          lualine_c = [];
          lualine_x = [];
          lualine_y = [];
          lualine_z = ["tabs"];
        };
      };
    };

    nvim-tree = {
      enable = true;
      openOnSetup = true;

      settings = {
        view = {
          adaptive_size = true;
          side = "right";
          number = true;
          relativenumber = true;
          preserve_window_proportions = true;
        };
      };
    };

    presence-nvim = {
      enable = true;
      editingText = "Editing";
      readingText = "Reading papers";
      fileExplorerText = "Browsing files";
      gitCommitText = "Committing";
      neovimImageText = "Our lord and saviour";
      pluginManagerText = "Managing plugins";
      workspaceText = "Drinking coffee";

      extraOptions = {
        buttons = false;
      };
    };
  };
}
