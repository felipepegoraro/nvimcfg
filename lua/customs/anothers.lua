-- telescope =======================================
require('telescope').setup{
  defaults = {
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
        preview_width = 0.35,
        results_width = 0.40,
      },
      width = 0.55,
      height = 0.60,
      preview_cutoff = 120,
    },
   }
}
-- telescope =======================================


-- blankline =======================================
require("indent_blankline").setup {
  char = "▏",
  buftype_exclude = {"terminal", "txt"}
}
-- blankline =======================================
