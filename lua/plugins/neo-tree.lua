return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      use_libuv_file_watcher = false, -- Desactiva el monitoreo de archivos con libuv
      filtered_items = {
        visible = true, -- Muestra archivos ocultos globalmente
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<cr>", { desc = "Alternar Neo-tree" })
  end,
}
