-- mini.surround: Textobjekt-Operatoren, unsichtbar (kein Design-Eingriff).
-- Quelle: omerxx/dotfiles nvim/lua/plugins/surround.lua, 1:1.
return {
  "nvim-mini/mini.surround",
  opts = {
    mappings = {
      add = "sa",
      delete = "sd",
      find = "gsf",
      find_left = "gsF",
      highlight = "gsh",
      replace = "gsr",
      update_n_lines = "gsn",
    },
  },
}
