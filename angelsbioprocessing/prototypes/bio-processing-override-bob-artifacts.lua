local OV = angelsmods.functions.OV

if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-blue"] then
  data:extend({	  
  --PRE ARTIFACTS
    {
      type = "item",
      name = "alien-pre-artifact-red",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "a[red]",
      stack_size = 200
    },
    {
      type = "item",
      name = "alien-pre-artifact-yellow",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "b[yellow]",
      stack_size = 200
    },
    {
      type = "item",
      name = "alien-pre-artifact-orange",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "c[orange]",
      stack_size = 200
    },
    {
      type = "item",
      name = "alien-pre-artifact-blue",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "d[blue]",
      stack_size = 200
    },
    {
      type = "item",
      name = "alien-pre-artifact-purple",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "e[purple]",
      stack_size = 200
    },
    {
      type = "item",
      name = "alien-pre-artifact-green",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "f[green]",
      stack_size = 200
    },
    {
      type = "item",
      name = "alien-pre-artifact-base",
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
      icon_size = 32,
      subgroup = "bio-processing-alien-pre",
      order = "g[base]",
      stack_size = 200
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-red",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-copper", amount=1},
        -- {type="item", name="ruby-4", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-red", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
      icon_size = 32,
      order = "a[red]",
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-yellow",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-gold", amount=1},
        -- {type="item", name="diamond-4", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-yellow", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
      icon_size = 32,
      order = "b[yellow]",
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-orange",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-tungsten", amount=1},
        -- {type="item", name="topaz-4", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-orange", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
      icon_size = 32,
      order = "c[orange]",
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-blue",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-cobalt", amount=1},
        -- {type="item", name="sapphire-4", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-blue", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
      icon_size = 32,
      order = "d[blue]",
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-purple",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-titanium", amount=1},
        -- {type="item", name="amethyst-4", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-purple", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
      icon_size = 32,
      order = "e[purple]",
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-green",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-zinc", amount=1},
        -- {type="item", name="emerald-4", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-green", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
      icon_size = 32,
      order = "f[green]",
    },
    {
      type = "recipe",
      name = "alien-pre-artifact-base",
      category = "crafting",
      subgroup = "bio-processing-alien-pre",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="seeded-dish", amount=1},
        {type="item", name="paste-iron", amount=1},
      },
      results=
      {
        {type="item", name="alien-pre-artifact-base", amount=1},
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
      icon_size = 32,
      order = "g[base]",
    },
    --SMALL
    {
      type = "recipe",
      name = "small-alien-artifact-red",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-red", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact-red", amount=1},
      },
      icon_size = 32,
      order = "a[red]",
    },
    {
      type = "recipe",
      name = "small-alien-artifact-yellow",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-yellow", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact-yellow", amount=1},
      },
      icon_size = 32,
      order = "b[yellow]",
    },
    {
      type = "recipe",
      name = "small-alien-artifact-orange",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-orange", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact-orange", amount=1},
      },
      icon_size = 32,
      order = "c[orange]",
    },
    {
      type = "recipe",
      name = "small-alien-artifact-blue",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-blue", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact-blue", amount=1},
      },
      icon_size = 32,
      order = "d[blue]",
    },
    {
      type = "recipe",
      name = "small-alien-artifact-purple",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-purple", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact-purple", amount=1},
      },
      icon_size = 32,
      order = "e[purple]",
    },
    {
      type = "recipe",
      name = "small-alien-artifact-green",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-green", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact-green", amount=1},
      },
      icon_size = 32,
      order = "f[green]",
    },
    {
      type = "recipe",
      name = "small-alien-artifact",
      category = "crafting",
      subgroup = "bio-processing-alien-small",
      enabled = "false",
      energy_required = 5,
      ingredients ={
        {type="item", name="alien-pre-artifact-base", amount=1},
      },
      results=
      {
        {type="item", name="small-alien-artifact", amount=1},
      },
      icon_size = 32,
      order = "g[base]",
    },
  }
  )

  if bobmods and bobmods.plates then
    OV.patch_recipes({
      { name = "alien-pre-artifact-yellow", ingredients = {{"diamond-4", 1}} },
      { name = "alien-pre-artifact-blue", ingredients = {{"sapphire-4", 1}} },
      { name = "alien-pre-artifact-green", ingredients = {{"emerald-4", 1}} },
      { name = "alien-pre-artifact-purple", ingredients = {{"amethyst-4", 1}} },
      { name = "alien-pre-artifact-orange", ingredients = {{"topaz-4", 1}} },
      { name = "alien-pre-artifact-red", ingredients = {{"ruby-4", 1}} },
    })
  end

  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-base")
  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-yellow")
  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-blue")
  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-green")
  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-purple")
  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-orange")
  OV.add_unlock("bio-processing-alien-1", "alien-pre-artifact-red")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact-red")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact-yellow")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact-orange")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact-blue")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact-purple")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact-green")
  OV.add_unlock("bio-processing-alien-1", "small-alien-artifact")

  -- small artifacts
  data.raw.item["small-alien-artifact-red"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact-red"].order = "a[red]"
  data.raw.item["small-alien-artifact-yellow"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact-yellow"].order = "b[yellow]"
  data.raw.item["small-alien-artifact-orange"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact-orange"].order = "c[orange]"
  data.raw.item["small-alien-artifact-blue"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact-blue"].order = "d[blue]"
  data.raw.item["small-alien-artifact-purple"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact-purple"].order = "e[purple]"
  data.raw.item["small-alien-artifact-green"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact-green"].order = "f[green]"
  data.raw.item["small-alien-artifact"].subgroup = "bio-processing-alien-small"
  data.raw.item["small-alien-artifact"].order = "g[base]"

  -- large artifacts
  data.raw.item["alien-artifact-red"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact-red"].order = "a[red]"
  data.raw.item["alien-artifact-yellow"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact-yellow"].order = "b[yellow]"
  data.raw.item["alien-artifact-orange"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact-orange"].order = "c[orange]"
  data.raw.item["alien-artifact-blue"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact-blue"].order = "d[blue]"
  data.raw.item["alien-artifact-purple"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact-purple"].order = "e[purple]"
  data.raw.item["alien-artifact-green"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact-green"].order = "f[green]"
  data.raw.item["alien-artifact"].subgroup = "bio-processing-alien-large"
  data.raw.item["alien-artifact"].order = "g[base]"

  -- conversion recipes
  OV.patch_recipes({
    { name = "alien-artifact-red-from-basic", subgroup = "bio-processing-alien-large-convert" },
    { name = "alien-artifact-yellow-from-basic", subgroup = "bio-processing-alien-large-convert" },
    { name = "alien-artifact-orange-from-basic", subgroup = "bio-processing-alien-large-convert" },
    { name = "alien-artifact-blue-from-basic", subgroup = "bio-processing-alien-large-convert" },
    { name = "alien-artifact-purple-from-basic", subgroup = "bio-processing-alien-large-convert" },
    { name = "alien-artifact-green-from-basic", subgroup = "bio-processing-alien-large-convert" },
  })

  -- result products
  if bobmods and bobmods.plates then
    data.raw["item-subgroup"]["bob-alien-resource"].group = "bio-processing-alien"
    data.raw["item-subgroup"]["bob-alien-resource"].order = "hd"
  end
end