data:extend(
{
  {
    type = "fluid",
    name = "alien-spores",
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.572, g=0.392, b=0.894},
    flow_color = {r=0.572, g=0.392, b=0.894},
    icon = "__angelsbioprocessing__/graphics/icons/alien-spores.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    },
    {
    type = "item",
    name = "alien-bacteria",
    icon = "__angelsbioprocessing__/graphics/icons/alien-bacteria.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-intermediate",
    order = "a[alien-bacteria]",
    stack_size = 200
    },
    {
    type = "fluid",
    name = "alien-goo",
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.572, g=0.392, b=0.894},
    flow_color = {r=0.572, g=0.392, b=0.894},
    icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    },
    {
    type = "item",
    name = "petri-dish",
    icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-intermediate",
    order = "b[petri-dish]",
    stack_size = 200
    },  
    {
    type = "item",
    name = "substrate-dish",
    icon = "__angelsbioprocessing__/graphics/icons/substrate-dish.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-intermediate",
    order = "c[substrate-dish]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-intermediate",
    order = "d[bio-processing-alien-intermediate]",
    stack_size = 200
    },
	--PRE-ARTIFACT
    {
    type = "item",
    name = "alien-pre-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "a[alien-pre-artifact-red]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "b[alien-pre-artifact-yellow]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "c[alien-pre-artifact-orange]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "d[alien-pre-artifact-blue]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "e[alien-pre-artifact-purple]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "f[alien-pre-artifact-green]",
    stack_size = 200
    },
    {
    type = "item",
    name = "alien-pre-artifact-base",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-pre",
    order = "g[alien-pre-artifact-base]",
    stack_size = 200
    },
	--SMALL ARTIFACT
    {
    type = "item",
    name = "small-alien-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-red.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "a[alien-artifact]-b[red]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    {
    type = "item",
    name = "small-alien-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-yellow.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "b[alien-artifact]-d[yellow]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    {
    type = "item",
    name = "small-alien-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-orange.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "c[alien-artifact]-c[orange]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    {
    type = "item",
    name = "small-alien-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-blue.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "d[alien-artifact]-f[blue]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    {
    type = "item",
    name = "small-alien-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-purple.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "e[alien-artifact]-g[purple]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    {
    type = "item",
    name = "small-alien-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-green.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "f[alien-artifact]-e[green]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    {
    type = "item",
    name = "small-alien-artifact",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "bio-processing-alien-small",
    order = "g[alien-artifact]-a[pink]-a[small]",
    stack_size = 500,
    default_request_amount = 100
    },
    --ARTIFACT
    {
    type = "item",
    name = "alien-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-red.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "a[alien-artifact-red]",
    stack_size = 500,
    default_request_amount = 10
    },
    {
    type = "item",
    name = "alien-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-yellow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "b[alien-artifact-yellow]",
    stack_size = 500,
    default_request_amount = 10
    },
    {
    type = "item",
    name = "alien-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-orange.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "c[alien-artifact-orange]",
    stack_size = 500,
    default_request_amount = 10
    },
    {
    type = "item",
    name = "alien-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-blue.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "d[alien-artifact-blue]",
    stack_size = 500,
    default_request_amount = 10
    },
    {
    type = "item",
    name = "alien-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-purple.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "e[alien-artifact-purple]",
    stack_size = 500,
    default_request_amount = 10
    },
    {
    type = "item",
    name = "alien-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-green.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "f[alien-artifact-green]",
    stack_size = 500,
    default_request_amount = 10
    },
    {
    type = "item",
    name = "alien-artifact",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-alien-big",
    order = "g[alien-artifact]",
    stack_size = 500,
    default_request_amount = 10
    },
}
)