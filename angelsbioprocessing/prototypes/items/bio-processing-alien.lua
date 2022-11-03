data:extend(
{
  -- ALIEN
  {
    type = "fluid",
    name = "alien-spores",
    default_temperature = 0,
    max_temperature = 0,
    heat_capacity = "1KJ",
    base_color = {r=0.572, g=0.392, b=0.894},
    flow_color = {r=0.572, g=0.392, b=0.894},
    icon = "__angelsbioprocessing__/graphics/icons/alien-spores.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "a[alien]-a[spores]",
  },
  {
    type = "item",
    name = "alien-bacteria",
    icon = "__angelsbioprocessing__/graphics/icons/alien-bacteria.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "a[alien]-b[bacteria]",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "alien-goo",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {168,035,194}, {168,035,194}, {241,050,238,0.9}, {241,050,238,0.9} }),
    subgroup = "bio-processing-alien-intermediate",
    order = "a[alien]-c[goo]",
    default_temperature = 0,
    max_temperature = 0,
    heat_capacity = "1KJ",
    base_color = {r=0.572, g=0.392, b=0.894},
    flow_color = {r=0.572, g=0.392, b=0.894},
  },



  -- DISH
  {
    type = "item",
    name = "petri-dish",
    icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "b[dish]-a[petri]",
    stack_size = 200
  },
  {
    type = "item",
    name = "substrate-dish",
    icon = "__angelsbioprocessing__/graphics/icons/substrate-dish.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "b[dish]-b[substrate]",
    stack_size = 200
  },
  {
    type = "item",
    name = "seeded-dish",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "b[dish]-c[seeded]",
    stack_size = 200
  },
  {
    type = "item",
    name = "crystal-seed",
    icon = "__angelsbioprocessing__/graphics/icons/crystal-seed.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "b[dish]-d[seed]-a[crystal]",
    stack_size = 200
  },
  {
    type = "item",
    name = "egg-shell-seed",
    icon = "__angelsbioprocessing__/graphics/icons/egg-shell-seed.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "b[dish]-d[seed]-b[egg-shell]",
    stack_size = 200
  },



  -- DISH USAGE
  {
    type = "item",
    name = "crystal-enhancer",
    icon = "__angelsbioprocessing__/graphics/icons/crystal-enhancer.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "c[crystal]-a[enhancer]",
    stack_size = 200
  },
  {
    type = "item",
    name = "crystal-grindstone",
    icon = "__angelsbioprocessing__/graphics/icons/crystal-grindstone.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "c[crystal]-b[grindstone]",
    stack_size = 200
  },
}
)
