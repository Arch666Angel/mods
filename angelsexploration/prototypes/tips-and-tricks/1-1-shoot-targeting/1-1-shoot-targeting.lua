local shoot_targeting = data.raw["tips-and-tricks-item"]["shoot-targeting"]
if shoot_targeting then
  shoot_targeting.category = "angelsexploration"
  shoot_targeting.order = "a[shoot-targeting]"
  shoot_targeting.indent = 1

  shoot_targeting.dependencies = { "angelsexploration" }
end
