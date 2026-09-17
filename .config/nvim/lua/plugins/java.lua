return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          format = {
            enabled = true,
            settings = {
              url = vim.fn.expand("~/.config/nvim/format/java-style.xml"),
              profile = "Acoidan",
            },
          },
        },
      },
    },
  },
}
