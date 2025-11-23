-- ========================================
-- MINIMALIST NEOVIM CONFIG
-- For Zettelkasten Notes & C++ Development
-- ========================================

-- ============ BASIC SETTINGS ============
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.conceallevel = 2  -- For nice markdown rendering

-- ============ PLUGIN MANAGER ============
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ============ PLUGINS ============
require("lazy").setup({
  -- Dashboard (Grand Entry Page)
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
            "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
            "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
            "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
            "",
            "        🚀 C++ Development • 📝 Zettelkasten Notes        ",
            "",
          },
          center = {
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Find Files                ",
              desc_hl = "String",
              key = "f",
              key_hl = "Number",
              action = "Telescope find_files",
            },
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Search Text               ",
              desc_hl = "String",
              key = "g",
              key_hl = "Number",
              action = "Telescope live_grep",
            },
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Recent Files              ",
              desc_hl = "String",
              key = "r",
              key_hl = "Number",
              action = "Telescope oldfiles",
            },
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Search Notes              ",
              desc_hl = "String",
              key = "s",
              key_hl = "Number",
              action = function()
                vim.cmd("Telescope find_files cwd=~/learning_projects")
              end,
            },
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Git Status (Neogit)       ",
              desc_hl = "String",
              key = "G",
              key_hl = "Number",
              action = "Neogit",
            },
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Config File               ",
              desc_hl = "String",
              key = "c",
              key_hl = "Number",
              action = "edit ~/.config/nvim/init.lua",
            },
            {
              icon = "  ",
              icon_hl = "Title",
              desc = "Quit                      ",
              desc_hl = "String",
              key = "q",
              key_hl = "Number",
              action = "qa",
            },
          },
          footer = {
            "",
            "⚡ Learning Projects: ~/learning_projects",
            "📚 Personal Vault: ~/personal_vault",
            "",
            "💡 Press <Space>? for all keybindings",
          },
        },
      })
    end,
  },

  -- Atom-inspired theme (OneDark)
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "dark",  -- dark, darker, cool, deep, warm, warmer
        transparent = false,
        term_colors = true,
        code_style = {
          comments = "italic",
          keywords = "italic",
          functions = "none",
          strings = "none",
          variables = "none"
        },
      })
      require("onedark").load()
    end,
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = { width = 30 },
        renderer = {
          group_empty = true,
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
      })
    end,
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = {
            horizontal = { preview_width = 0.6 },
          },
        },
      })
    end,
  },

  -- Zettelkasten note-taking
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        {
          name = "learning",
          path = "~/learning_projects",
        },
        {
          name = "personal",
          path = "~/personal_vault",
        },
      },
      daily_notes = {
        folder = "daily",
        date_format = "%Y-%m-%d",
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      mappings = {
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        ["<leader>ch"] = {
          action = function()
            return require("obsidian").util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
      },
      note_id_func = function(title)
        return title
      end,
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
      },
    },
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd" },
        automatic_installation = true,
      })
      
      -- Setup clangd for C++ (new API)
      vim.lsp.enable('clangd')
    end,
  },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "cpp", "c", "lua", "markdown", "markdown_inline" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Status line (simple)
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "onedark",
          component_separators = "|",
          section_separators = "",
        },
        sections = {
          lualine_a = {"mode"},
          lualine_b = {"branch", "diff"},
          lualine_c = {"filename"},
          lualine_x = {"filetype"},
          lualine_y = {"progress"},
          lualine_z = {"location"}
        },
      })
    end,
  },

  -- Buffer/Tab line
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          numbers = "none",
          close_command = "bdelete! %d",
          right_mouse_command = "bdelete! %d",
          left_mouse_command = "buffer %d",
          indicator = {
            style = "icon",
            icon = "▎",
          },
          buffer_close_icon = "×",
          modified_icon = "●",
          close_icon = "×",
          show_buffer_close_icons = true,
          show_close_icon = true,
          separator_style = "thin",
          always_show_bufferline = true,
        },
      })
    end,
  },

  -- Git signs (inline git info)
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 500,
        },
      })
    end,
  },

  -- Git interface (for easy commits)
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = function()
      require("neogit").setup({
        integrations = {
          diffview = true,
        },
      })
    end,
  },

  -- Which-key (shows keybindings)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup({
        preset = "modern",
      })
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = { char = "│" },
        scope = { enabled = true },
      })
    end,
  },

  -- Markdown preview (simplified)
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npx --yes yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- Comments
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- Color highlighter (updated version)
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
})

-- ============ KEY MAPPINGS ============

-- File Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Search in files" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>", { desc = "Recent files" })

-- Obsidian (Zettelkasten)
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>", { desc = "New note" })
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>", { desc = "Search notes" })
vim.keymap.set("n", "<leader>oo", ":ObsidianQuickSwitch<CR>", { desc = "Switch notes" })
vim.keymap.set("n", "<leader>ol", ":ObsidianLinks<CR>", { desc = "Show links" })
vim.keymap.set("n", "<leader>ob", ":ObsidianBacklinks<CR>", { desc = "Show backlinks" })
vim.keymap.set("n", "<leader>ot", ":ObsidianToday<CR>", { desc = "Today's note" })
vim.keymap.set("n", "<leader>od", ":ObsidianDailies<CR>", { desc = "Daily notes" })

-- Git
vim.keymap.set("n", "<leader>gg", ":Neogit<CR>", { desc = "Open Neogit" })
vim.keymap.set("n", "<leader>gc", ":Neogit commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", ":!git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gP", ":!git pull<CR>", { desc = "Git pull" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move right" })

-- Buffer/Tab navigation
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })

-- Save and quit
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>x", ":x<CR>", { desc = "Save and quit" })

-- Markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Markdown preview" })

-- ============ C++ COMPILE & RUN (F5) ============
vim.keymap.set("n", "<F5>", function()
  local file = vim.fn.expand("%:p")
  local output = vim.fn.expand("%:p:r")
  
  vim.cmd("write")
  print("Compiling " .. vim.fn.expand("%:t") .. "...")
  
  local compile_cmd = string.format("g++ -std=c++17 -Wall -O2 '%s' -o '%s'", file, output)
  local compile_result = vim.fn.system(compile_cmd)
  
  if vim.v.shell_error ~= 0 then
    print("Compilation failed!")
    print(compile_result)
    return
  end
  
  print("Compilation successful! Running...")
  vim.cmd("split")
  vim.cmd("terminal " .. output)
  vim.cmd("startinsert")
end, { desc = "Compile and run C++" })

-- Compile only (F6)
vim.keymap.set("n", "<F6>", function()
  local file = vim.fn.expand("%:p")
  local output = vim.fn.expand("%:p:r")
  
  vim.cmd("write")
  print("Compiling " .. vim.fn.expand("%:t") .. "...")
  
  local compile_cmd = string.format("g++ -std=c++17 -Wall -O2 '%s' -o '%s'", file, output)
  local compile_result = vim.fn.system(compile_cmd)
  
  if vim.v.shell_error ~= 0 then
    print("Compilation failed!")
    print(compile_result)
  else
    print("Compilation successful!")
  end
end, { desc = "Compile C++" })

-- ============ AUTO COMMANDS ============

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Format on save for C++ (DISABLED - was reformatting code weirdly)
-- If you want auto-format back, uncomment the lines below
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = { "*.cpp", "*.h", "*.hpp" },
--   callback = function()
--     vim.lsp.buf.format({ async = false })
--   end,
-- })

-- Auto-save on leaving insert mode (optional, comment out if you don't want)
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = "*",
--   command = "silent! write",
-- })

-- ============ WELCOME MESSAGE ============
-- Dashboard handles the welcome screen now
-- To see dashboard again, run: :Dashboard
