-- DEBUG
data:extend({
  {
    type = "font",
    name = "angels-enemy_statistics_graph_font",
    from = "angels_square_font",
    size = 2,
  },
})
data.raw["gui-style"]["default"]["enemy_statistics_graph_label"] = {
  type = "label_style",
  parent = "label",
  minimal_width = 100,
  height = 2,
  font = "angels-enemy_statistics_graph_font",
}
