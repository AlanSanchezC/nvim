return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    --"nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  filesystem = {
    use_libuv_file_watcher = false, -- Desactiva el monitoreo de archivos con libuv
    filtered_items = {
      visible = true,             -- Muestra archivos ocultos globalmente
    },
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
  end,
}
