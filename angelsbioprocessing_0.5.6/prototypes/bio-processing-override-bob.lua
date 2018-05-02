local OV = angelsmods.functions.OV

data:extend({	  
--PRE ARTIFACTS
{
type = "recipe",
name = "alien-pre-artifact-red",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-copper", amount=1},
-- {type="item", name="ruby-4", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-red", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
icon_size = 32,
order = "a [alien-pre-artifact-red]",
},
{
type = "recipe",
name = "alien-pre-artifact-yellow",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-gold", amount=1},
-- {type="item", name="diamond-4", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-yellow", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
icon_size = 32,
order = "b [alien-pre-artifact-yellow]",
},
{
type = "recipe",
name = "alien-pre-artifact-orange",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-tungsten", amount=1},
-- {type="item", name="topaz-4", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-orange", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
icon_size = 32,
order = "c [alien-pre-artifact-orange]",
},
{
type = "recipe",
name = "alien-pre-artifact-blue",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-cobalt", amount=1},
-- {type="item", name="sapphire-4", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-blue", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
icon_size = 32,
order = "d [alien-pre-artifact-blue]",
},
{
type = "recipe",
name = "alien-pre-artifact-purple",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-titanium", amount=1},
-- {type="item", name="amethyst-4", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-purple", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
icon_size = 32,
order = "e [alien-pre-artifact-purple]",
},
{
type = "recipe",
name = "alien-pre-artifact-green",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-zinc", amount=1},
-- {type="item", name="emerald-4", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-green", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
icon_size = 32,
order = "f [alien-pre-artifact-green]",
},
{
type = "recipe",
name = "alien-pre-artifact-base",
category = "crafting",
subgroup = "bio-processing-alien-pre",
enabled = "false",
energy_required = 5,
ingredients ={
{type="item", name="alien-pre-artifact", amount=1},
{type="item", name="paste-iron", amount=1},
},
results=
{
  {type="item", name="alien-pre-artifact-base", amount=1},
},
icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
icon_size = 32,
order = "g [alien-pre-artifact-base]",
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
order = "d",
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
order = "e",
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
order = "f",
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
order = "g",
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
order = "h",
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
order = "i",
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
order = "j",
},
})
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

OV.add_unlock("bio-processing-alien", "alien-pre-artifact-base")      
OV.add_unlock("bio-processing-alien", "alien-pre-artifact-yellow")										    	
OV.add_unlock("bio-processing-alien", "alien-pre-artifact-blue")
OV.add_unlock("bio-processing-alien", "alien-pre-artifact-green")
OV.add_unlock("bio-processing-alien", "alien-pre-artifact-purple")
OV.add_unlock("bio-processing-alien", "alien-pre-artifact-orange")
OV.add_unlock("bio-processing-alien", "alien-pre-artifact-red")
OV.add_unlock("bio-processing-alien", "small-alien-artifact-red")
OV.add_unlock("bio-processing-alien", "small-alien-artifact-yellow")
OV.add_unlock("bio-processing-alien", "small-alien-artifact-orange")
OV.add_unlock("bio-processing-alien", "small-alien-artifact-blue")
OV.add_unlock("bio-processing-alien", "small-alien-artifact-purple")
OV.add_unlock("bio-processing-alien", "small-alien-artifact-green")
OV.add_unlock("bio-processing-alien", "small-alien-artifact")