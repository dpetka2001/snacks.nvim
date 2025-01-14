---@class snacks.picker.layouts
---@field [string] snacks.picker.layout.Config
local M = {}

M.default = {
  layout = {
    box = "horizontal",
    width = 0.8,
    min_width = 120,
    height = 0.8,
    {
      box = "vertical",
      border = "rounded",
      title = "{source} {live}",
      title_pos = "center",
      { win = "input", height = 1, border = "bottom" },
      { win = "list", border = "none" },
    },
    { win = "preview", border = "rounded", width = 0.5 },
  },
}

M.telescope = {
  reverse = true,
  layout = {
    box = "horizontal",
    backdrop = false,
    width = 0.8,
    height = 0.9,
    border = "none",
    {
      box = "vertical",
      { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
      { win = "input", height = 1, border = "rounded", title = "{source} {live}", title_pos = "center" },
    },
    {
      win = "preview",
      width = 0.45,
      border = "rounded",
      title = " Preview ",
      title_pos = "center",
    },
  },
}

M.ivy = {
  layout = {
    box = "vertical",
    backdrop = false,
    row = -1,
    width = 0,
    height = 0.4,
    border = "top",
    title = " {source} {live}",
    title_pos = "left",
    { win = "input", height = 1, border = "bottom" },
    {
      box = "horizontal",
      { win = "list", border = "none" },
      { win = "preview", width = 0.6, border = "left" },
    },
  },
}

M.dropdown = {
  layout = {
    backdrop = false,
    row = 1,
    width = 0.4,
    min_width = 80,
    height = 0.8,
    border = "none",
    box = "vertical",
    { win = "preview", height = 0.4, border = "rounded" },
    {
      box = "vertical",
      border = "rounded",
      title = "{source} {live}",
      title_pos = "center",
      { win = "input", height = 1, border = "bottom" },
      { win = "list", border = "none" },
    },
  },
}

M.vertical = {
  layout = {
    backdrop = false,
    width = 0.5,
    min_width = 80,
    height = 0.8,
    min_height = 30,
    box = "vertical",
    border = "rounded",
    title = "{source} {live}",
    title_pos = "center",
    { win = "input", height = 1, border = "bottom" },
    { win = "list", border = "none" },
    { win = "preview", height = 0.4, border = "top" },
  },
}

M.select = {
  preview = false,
  layout = {
    backdrop = false,
    width = 0.5,
    min_width = 80,
    height = 0.4,
    min_height = 10,
    box = "vertical",
    border = "rounded",
    title = " Select ",
    title_pos = "center",
    { win = "input", height = 1, border = "bottom" },
    { win = "list", border = "none" },
    { win = "preview", height = 0.4, border = "top" },
  },
}

M.vscode = {
  preview = false,
  layout = {
    backdrop = false,
    row = 1,
    width = 0.4,
    min_width = 80,
    height = 0.4,
    border = "none",
    box = "vertical",
    { win = "input", height = 1, border = "rounded", title = "{source} {live}", title_pos = "center" },
    { win = "list", border = "hpad" },
    { win = "preview", border = "rounded" },
  },
}

return M