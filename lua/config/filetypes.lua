vim.filetype.add({
  pattern = {
    [".*/templates/.*%.ya?ml"] = "helm",
    [".*/templates/.*%.tpl"] = "helm",
  },
  filename = {
    ["Chart.yaml"] = "yaml",
    ["values.yaml"] = "yaml",
  },
})
