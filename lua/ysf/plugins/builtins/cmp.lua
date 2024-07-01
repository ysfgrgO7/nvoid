nvoid.builtin.cmp.cmdline.enable = true
nvoid.builtin.cmp.formatting = {
  fields = { "abbr", "kind", "menu" },
  kind_icons = nvoid.icons.kind,
  source_names = {
    nvim_lsp = "LSP",
    emoji = "Emoji",
    path = "Path",
    calc = "Calc",
    cmp_tabnine = "Tabnine",
    vsnip = "Snippet",
    luasnip = "Snippet",
    buffer = "Buffer",
    tmux = "TMUX",
    copilot = "Copilot",
    treesitter = "TreeSitter",
  },
  format = function(_, item)
    local icons = nvoid.builtin.cmp.formatting.kind_icons
    local icon = icons[item.kind] or ""

    icon = (" " .. icon .. " ") or icon
    item.kind = string.format("%s %s", icon, item.kind or "")

    return item
  end,
}
