data:extend({
  {
    type = "noise-function",
    name = "angels_moisture_level",
    parameters = {"optimal", "range", "max_range"},
    expression = "angels_value_optimal_with_range(moisture, optimal, range, max_range)",
  },
})
