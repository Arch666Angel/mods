data:extend(
{
  --SULFUR
  {
    type = "recipe",
    name = "gas-acid-catalyst",
    category = "advanced-chemistry",
    subgroup = "petrochem-sulfur",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-acid", amount=100},
      {type="item", name="catalyst-metal-green", amount=1},    --Al
    },
    results=
    {
      {type="fluid", name="gas-hydrogen-sulfide", amount=60},
      {type="fluid", name="gas-carbon-dioxide", amount=20},
      {type="fluid", name="liquid-hydrofluoric-acid", amount=20},
      {type="item", name="catalyst-metal-carrier", amount=1, catalyst_amount=1},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
    }, "shh"),
    order = "a[gas-acid-catalyst]",
  },
  {
    type = "recipe",
    name = "solid-sulfur",
    category = "chemistry",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-hydrogen-sulfide", amount=60},
      {type="fluid", name="gas-oxygen", amount=40},
    },
    results=
    {
      {type="item", name="sulfur", amount=3},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/solid-sulfur.png", 32 },
    }, "sss"),
    order = "b[solid-sulfur]",
  },
  {
    type = "recipe",
    name = "gas-sulfur-dioxide",
    category = "chemistry",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="sulfur", amount=1},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results=
    {
      {type="fluid", name="gas-sulfur-dioxide", amount=60},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72 },
    }, "soo"),
    order = "ca[gas-sulfur-dioxide]",
  },
  {
    type = "recipe",
    name = "gas-sulfur-dioxide-calcium-sulfate",
    category = "liquifying",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="solid-calcium-sulfate", amount=2},
      {type="fluid", name="water-purified", amount=50},
    },
    results=
    {
      {type="fluid", name="gas-sulfur-dioxide", amount=50},
      {type="item", name="angels-void", amount=1},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72 },
    }, "soo"),
    order = "cb[gas-sulfur-dioxide-calcium-sulfate]",
  },
  {
    type = "recipe",
    name = "liquid-sulfuric-acid",
    category = "chemistry",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-sulfur-dioxide", amount=90},
      {type="fluid", name="water-purified", amount=40},
    },
    results=
    {
      {type="fluid", name="liquid-sulfuric-acid", amount=60},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "d[liquid-sulfuric-acid]",
  },
  {
    type = "recipe",
    name = "liquid-hydrofluoric-acid",
    category = "chemistry",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="fluorite-ore", amount=5},
      {type="fluid", name="sulfuric-acid", amount=50},
    },
    results=
    {
      {type="fluid", name="liquid-hydrofluoric-acid", amount=50},
      {type="item", name="solid-calcium-sulfate", amount=1},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
    }, "fhh"),
    order = "e[liquid-hydrofluoric-acid]",
  },
  {
    type = "recipe",
    name = "filter-lime",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="filter-frame", amount=1},
      {type="item", name="stone-crushed", amount=5},
    },
    results=
    {
      {type="item", name="filter-lime", amount=1},
    },
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "b[filter-lime]",
  },
  {
    type = "recipe",
    name = "angels-sulfur-scrubber",
    category = "petrochem-air-filtering",
    subgroup = "petrochem-sulfur",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {type="item", name="filter-lime", amount=1},
      {type="fluid", name="water", amount=20},
    },
    results=
    {
      {type="item", name="filter-lime-used", amount=1},
      {type="fluid", name="water-yellow-waste", amount=20},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/solid-sulfur.png", 32 },
    }, "sss"),
    order = "g",
  },
  {
    type = "recipe",
    name = "filter-lime-used",
    category = "liquifying",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="filter-lime-used", amount=1},
    },
    results=
    {
      {type="fluid", name="gas-acid", amount=20},
      {type="item", name="filter-frame", amount=1},
    },
    main_product = "gas-acid",
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon(nil, "sss"),
    order = "h",
  },
}
)
