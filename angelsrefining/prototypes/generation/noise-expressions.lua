data:extend({
  {
    type = "noise-function",
    name = "angels_value_optimal_with_range",
    parameters = {"value", "optimal", "range", "max_range"},
    expression = "if((left_range <= value) * (value <= right_range),\z
                     1,\z
                     clamp(if(value <= optimal,\z
                              2 * (value - left_max) / (left_range - left_max) - 1,\z
                              2 * (right_max - value) / 2 * (right_max - right_range) - 1), 0, 1))",
    local_expressions =
    {
      left_max = "optimal - max_range",
      left_range = "optimal - range",
      right_max = "optimal + max_range",
      right_range = "optimal + range",
    },
  },
})
