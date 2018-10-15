data:extend(
{
--PUFFER
  {
    type = "recipe",
    name = "gas-puffer-atmosphere",
    category = "advanced-chemistry",
    subgroup = "bio-puffer",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="fluid", name="gas-sulfur-dioxide", amount=20},
      {type="fluid", name="liquid-hydrofluoric-acid", amount=10},
      {type="fluid", name="gas-oxygen", amount=10},
    },
    results=
    {
      {type="fluid", name="gas-puffer-atmosphere", amount=60},
    },
    main_product = "gas-puffer-atmosphere",
    --icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "puffer-puffing-1",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-puffer-1", amount=4},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=40},
      {type="fluid", name="gas-carbon-dioxide", amount=180},
    },
    results=
    {
      {type="item", name="bio-puffer-1", amount=3},
      {type="item", name="bio-puffer-1", amount=1, probability = 0.95},
      {type="fluid", name="gas-acid", amount=200},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "puffer-breeding-1",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-1", amount=2},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=20},
    },
    results=
    {
      {type="item", name="bio-puffer-1", amount=2},
      {type="item", name="bio-puffer-egg-1", amount=1, probability = 0.5},
      {type="item", name="bio-puffer-egg-2", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-3", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-4", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
      },
    },
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "puffer-egg-1",
    category = "bio-hatchery",
    subgroup = "bio-puffer-egg",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-egg-1", amount=1},
    },
    results=
    {
      {type="item", name="bio-puffer-1", amount=1, probability = 0.95},
      {type="item", name="bio-puffer-2", amount=1, probability = 0.05},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-egg.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "puffer-butchery-1",
    category = "bio-butchery",
    subgroup = "bio-puffer-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-1", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "puffer-puffing-2",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-puffer-2", amount=4},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=40},
      {type="fluid", name="gas-ammonia", amount=200},
    },
    results=
    {
      {type="item", name="bio-puffer-2", amount=3},
      {type="item", name="bio-puffer-2", amount=1, probability = 0.95},
      {type="fluid", name="gas-acid", amount=20},
      {type="fluid", name="gas-raw-1", amount=200},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-2-icon.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "puffer-breeding-2",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-2", amount=2},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=20},
    },
    results=
    {
      {type="item", name="bio-puffer-2", amount=2},
      {type="item", name="bio-puffer-egg-1", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-2", amount=1, probability = 0.5},
      {type="item", name="bio-puffer-egg-3", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-4", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/puffer-2-icon.png",
      },
    },
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "puffer-egg-2",
    category = "bio-hatchery",
    subgroup = "bio-puffer-egg",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-egg-2", amount=1},
    },
    results=
    {
      {type="item", name="bio-puffer-2", amount=1, probability = 0.8},
      {type="item", name="bio-puffer-1", amount=1, probability = 0.2},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-2-egg.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "puffer-butchery-2",
    category = "bio-butchery",
    subgroup = "bio-puffer-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-2", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "puffer-puffing-3",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-puffer-3", amount=4},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=40},
      {type="fluid", name="gas-synthesis", amount=200},
    },
    results=
    {
      {type="item", name="bio-puffer-3", amount=3},
      {type="item", name="bio-puffer-3", amount=1, probability = 0.95},
      {type="fluid", name="gas-acid", amount=20},
      {type="fluid", name="gas-urea", amount=200},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-3-icon.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "puffer-breeding-3",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-3", amount=2},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=20},
    },
    results=
    {
      {type="item", name="bio-puffer-3", amount=2},
      {type="item", name="bio-puffer-egg-1", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-2", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-3", amount=1, probability = 0.5},
      {type="item", name="bio-puffer-egg-4", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/puffer-3-icon.png",
      },
    },
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "puffer-egg-3",
    category = "bio-hatchery",
    subgroup = "bio-puffer-egg",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-egg-3", amount=1},
    },
    results=
    {
      {type="item", name="bio-puffer-3", amount=1, probability = 0.7},
      {type="item", name="bio-puffer-1", amount=1, probability = 0.3},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-3-egg.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "puffer-butchery-3",
    category = "bio-butchery",
    subgroup = "bio-puffer-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-3", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "puffer-puffing-4",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-puffer-4", amount=4},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=40},
      {type="fluid", name="gas-phosgene", amount=200},
    },
    results=
    {
      {type="item", name="bio-puffer-4", amount=3},
      {type="item", name="bio-puffer-4", amount=1, probability = 0.95},
      {type="fluid", name="gas-acid", amount=20},
      {type="fluid", name="gas-sulfur-dioxide", amount=200},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-4-icon.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "puffer-breeding-4",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-4", amount=2},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=20},
    },
    results=
    {
      {type="item", name="bio-puffer-4", amount=2},
      {type="item", name="bio-puffer-egg-1", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-2", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-3", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-4", amount=1, probability = 0.5},
      {type="item", name="bio-puffer-egg-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/puffer-4-icon.png",
      },
    },
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "puffer-egg-4",
    category = "bio-hatchery",
    subgroup = "bio-puffer-egg",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-egg-4", amount=1},
    },
    results=
    {
      {type="item", name="bio-puffer-4", amount=1, probability = 0.6},
      {type="item", name="bio-puffer-1", amount=1, probability = 0.4},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-4-egg.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "puffer-butchery-4",
    category = "bio-butchery",
    subgroup = "bio-puffer-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-4", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "puffer-puffing-5",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-puffer-5", amount=4},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=40},
      {type="fluid", name="gas-hydrazine", amount=200},
    },
    results=
    {
      {type="item", name="bio-puffer-5", amount=3},
      {type="item", name="bio-puffer-5", amount=1, probability = 0.95},
      {type="fluid", name="gas-acid", amount=20},
      {type="fluid", name="liquid-hydrofluoric-acid", amount=200},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-5-icon.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "puffer-breeding-5",
    category = "bio-refugium-puffer",
    subgroup = "bio-puffer-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-5", amount=2},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="fluid", name="gas-puffer-atmosphere", amount=20},
    },
    results=
    {
      {type="item", name="bio-puffer-5", amount=2},
      {type="item", name="bio-puffer-egg-1", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-2", amount=1, probability = 0.1},
      {type="item", name="bio-puffer-egg-3", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-4", amount=1, probability = 0.05},
      {type="item", name="bio-puffer-egg-5", amount=1, probability = 0.5},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/puffer-5-icon.png",
      },
    },
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "puffer-egg-5",
    category = "bio-hatchery",
    subgroup = "bio-puffer-egg",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-egg-5", amount=1},
    },
    results=
    {
      {type="item", name="bio-puffer-5", amount=1, probability = 0.5},
      {type="item", name="bio-puffer-1", amount=1, probability = 0.5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/puffer-5-egg.png",
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "puffer-butchery-5",
    category = "bio-butchery",
    subgroup = "bio-puffer-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-puffer-5", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "e",
  },
--HOGGER
  {
    type = "recipe",
    name = "hogger-hogging-1",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-hogger-1", amount=4},
      {type="item", name="iron-ore", amount=10},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-1", amount_min=3, amount_max = 5},
      {type="item", name="copper-ore", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/hogger-1-icon.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "hogger-breeding-1",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-1", amount=2},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-1", amount=2},
      {type="item", name="bio-hogger-1", amount=1, probability = 0.5},
      {type="item", name="bio-hogger-2", amount=1, probability = 0.1},
      {type="item", name="bio-hogger-3", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-4", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/hogger-1-icon.png",
      },
    },
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "hogger-butchery-1",
    category = "bio-butchery",
    subgroup = "bio-hogger-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-1", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "hogger-hogging-2",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-hogger-2", amount=4},
      {type="item", name="iron-ore", amount=10},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-2", amount_min=3, amount_max = 5},
      {type="item", name="copper-ore", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/hogger-2-icon.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "hogger-breeding-2",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-2", amount=2},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-2", amount=2},
      {type="item", name="bio-hogger-1", amount=1, probability = 0.5},
      {type="item", name="bio-hogger-2", amount=1, probability = 0.1},
      {type="item", name="bio-hogger-3", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-4", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/hogger-2-icon.png",
      },
    },
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "hogger-butchery-2",
    category = "bio-butchery",
    subgroup = "bio-hogger-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-2", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "hogger-hogging-3",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-hogger-3", amount=4},
      {type="item", name="iron-ore", amount=10},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-3", amount_min=3, amount_max = 5},
      {type="item", name="copper-ore", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/hogger-3-icon.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "hogger-breeding-3",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-3", amount=2},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-3", amount=2},
      {type="item", name="bio-hogger-1", amount=1, probability = 0.5},
      {type="item", name="bio-hogger-2", amount=1, probability = 0.1},
      {type="item", name="bio-hogger-3", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-4", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/hogger-3-icon.png",
      },
    },
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "hogger-butchery-3",
    category = "bio-butchery",
    subgroup = "bio-hogger-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-3", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "hogger-hogging-4",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-hogger-4", amount=4},
      {type="item", name="iron-ore", amount=10},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-4", amount_min=3, amount_max = 5},
      {type="item", name="copper-ore", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/hogger-4-icon.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "hogger-breeding-4",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-4", amount=2},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-4", amount=2},
      {type="item", name="bio-hogger-1", amount=1, probability = 0.5},
      {type="item", name="bio-hogger-2", amount=1, probability = 0.1},
      {type="item", name="bio-hogger-3", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-4", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/hogger-4-icon.png",
      },
    },
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "hogger-butchery-4",
    category = "bio-butchery",
    subgroup = "bio-hogger-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-4", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "hogger-hogging-5",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger",
    enabled = "false",
    energy_required = 30,
    ingredients ={
      {type="item", name="bio-hogger-5", amount=4},
      {type="item", name="iron-ore", amount=10},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-5", amount_min=3, amount_max = 5},
      {type="item", name="copper-ore", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/hogger-5-icon.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "hogger-breeding-5",
    category = "bio-refugium-hogger",
    subgroup = "bio-hogger-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-5", amount=2},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="bio-hogger-5", amount=2},
      {type="item", name="bio-hogger-1", amount=1, probability = 0.5},
      {type="item", name="bio-hogger-2", amount=1, probability = 0.1},
      {type="item", name="bio-hogger-3", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-4", amount=1, probability = 0.05},
      {type="item", name="bio-hogger-5", amount=1, probability = 0.05},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/hogger-5-icon.png",
      },
    },
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "hogger-butchery-5",
    category = "bio-butchery",
    subgroup = "bio-hogger-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="bio-hogger-5", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "d",
  },
  --FISH
  {
    type = "recipe",
    name = "fish-breeding-1",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="alien-fish-1-raw", amount=2},
      {type="item", name="algae-brown", amount=2},
      {type="fluid", name="water", amount=20},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="alien-fish-1-raw", amount_min=5, amount_max=10},
      {type="fluid", name="water-yellow-waste", amount=20},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "fish-butchery-1",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="alien-fish-1-raw", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "fish-breeding-2",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="alien-fish-2-raw", amount=2},
      {type="item", name="algae-green", amount=2},
      {type="fluid", name="water-saline", amount=20},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="alien-fish-2-raw", amount_min=5, amount_max=10},
      {type="fluid", name="water-yellow-waste", amount=20},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "fish-butchery-2",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="alien-fish-2-raw", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "fish-breeding-3",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="alien-fish-3-raw", amount=2},
      {type="item", name="bio-raw-meat", amount=2},
      {type="fluid", name="water", amount=20},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
    },
    results=
    {
      {type="item", name="alien-fish-3-raw", amount_min=5, amount_max=10},
      {type="fluid", name="water-yellow-waste", amount=20},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "fish-butchery-3",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = "false",
    hidden = "false",
    energy_required = 60,
    ingredients ={
      {type="item", name="alien-fish-3-raw", amount=1},
    },
    results=
    {
      {type="item", name="bio-raw-meat", amount=2},
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "c",
  },
  -- {
  --   type = "recipe",
  --   name = "solid-wood-pulp",
  --   category = "crafting",
  --   subgroup = "bio-paper",
  --   enabled = "false",
  --   energy_required = 4,
  --   ingredients ={
  --     {type="item", name="cellulose-fiber", amount=4},
  --     {type="item", name="solid-alginic-acid", amount=1},
  --   },
  --   results=
  --   {
  --     {type="item", name="solid-wood-pulp", amount=3},
  --   },
  --   icons = {
  --     {
  --       icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
  --     },
  --     {
  --       icon = "__angelspetrochem__/graphics/icons/num_1.png",
  --       tint = {r = 0.2, g = 1, b = 0.2, a = 0.5},
  --       scale = 0.32,
  --       shift = {-12, -12},
  --     }
  --   },
  --   icon_size = 32,
  --   order = "a",
  -- },
}
)
