local OV = angelsmods.functions.OV
local contains_artifact_creation = false

-------------------------------------------------------------------------------
-- RED ARTIFACTS --------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["red"] then
  if bobmods and bobmods.plates then
    OV.patch_recipes({
      { name = "angels-alien-pre-artifact-red", ingredients = { { type = "item", name = "bob-ruby-4", amount = 1 } } },
    })
  end

  if data.raw.item["bob-small-alien-artifact-red"] then
    OV.modify_output(
      "angels-small-alien-artifact-red",
      { type = "item", name = "bob-small-alien-artifact-red", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["copper"] then
      angelsmods.functions.move_item("bob-small-alien-artifact-red", "angels-bio-processing-alien-small", "a[red]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-red", "angels-bio-processing-alien-large", "a[red]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-red-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
  else
    OV.disable_recipe("angels-small-alien-artifact-red")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-red")
  OV.disable_recipe({ "angels-alien-pre-artifact-red", "angels-small-alien-artifact-red" })
end

-------------------------------------------------------------------------------
-- YELLOW ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["yellow"] then
  if bobmods and bobmods.plates then
    OV.patch_recipes({
      {
        name = "angels-alien-pre-artifact-yellow",
        ingredients = { { type = "item", name = "bob-diamond-4", amount = 1 } },
      },
    })
  end

  if data.raw.item["bob-small-alien-artifact-yellow"] then
    OV.modify_output(
      "angels-small-alien-artifact-yellow",
      { type = "item", name = "bob-small-alien-artifact-yellow", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["gold"] then
      angelsmods.functions.move_item(
        "bob-small-alien-artifact-yellow",
        "angels-bio-processing-alien-small",
        "b[yellow]"
      )
    end
    angelsmods.functions.move_item("bob-alien-artifact-yellow", "angels-bio-processing-alien-large", "b[yellow]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-yellow-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
  else
    OV.disable_recipe("angels-small-alien-artifact-yellow")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-yellow")
  OV.disable_recipe({ "angels-alien-pre-artifact-yellow", "angels-small-alien-artifact-yellow" })
end

-------------------------------------------------------------------------------
-- ORANGE ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["orange"] then
  if bobmods and bobmods.plates then
    OV.patch_recipes({
      {
        name = "angels-alien-pre-artifact-orange",
        ingredients = { { type = "item", name = "bob-topaz-4", amount = 1 } },
      },
    })
  end

  if data.raw.item["bob-small-alien-artifact-orange"] then
    OV.modify_output(
      "angels-small-alien-artifact-orange",
      { type = "item", name = "bob-small-alien-artifact-orange", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["tungsten"] then
      angelsmods.functions.move_item(
        "bob-small-alien-artifact-orange",
        "angels-bio-processing-alien-small",
        "c[orange]"
      )
    end
    angelsmods.functions.move_item("bob-alien-artifact-orange", "angels-bio-processing-alien-large", "c[orange]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-orange-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
  else
    OV.disable_recipe("angels-small-alien-artifact-orange")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-orange")
  OV.disable_recipe({ "angels-alien-pre-artifact-orange", "angels-small-alien-artifact-orange" })
end

-------------------------------------------------------------------------------
-- BLUE ARTIFACTS -------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["blue"] then
  if angelsmods.trigger.bio_pastes["cobalt"] then
    if bobmods and bobmods.plates then
      OV.patch_recipes({
        {
          name = "angels-alien-pre-artifact-blue",
          ingredients = { { type = "item", name = "bob-sapphire-4", amount = 1 } },
        },
      })
    end
  end

  if data.raw.item["bob-small-alien-artifact-blue"] then
    OV.modify_output(
      "angels-small-alien-artifact-blue",
      { type = "item", name = "bob-small-alien-artifact-blue", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["cobalt"] then
      angelsmods.functions.move_item("bob-small-alien-artifact-blue", "angels-bio-processing-alien-small", "d[blue]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-blue", "angels-bio-processing-alien-large", "d[blue]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-blue-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
  else
    OV.disable_recipe("angels-small-alien-artifact-blue")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-blue")
  OV.disable_recipe({ "angels-alien-pre-artifact-blue", "angels-small-alien-artifact-blue" })
end

-------------------------------------------------------------------------------
-- PURPLE ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["purple"] then
  if angelsmods.trigger.bio_pastes["titanium"] then
    if bobmods and bobmods.plates then
      OV.patch_recipes({
        {
          name = "angels-alien-pre-artifact-purple",
          ingredients = { { type = "item", name = "bob-amethyst-4", amount = 1 } },
        },
      })
    end
  end

  if data.raw.item["bob-small-alien-artifact-purple"] then
    OV.modify_output(
      "angels-small-alien-artifact-purple",
      { type = "item", name = "bob-small-alien-artifact-purple", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["titanium"] then
      angelsmods.functions.move_item(
        "bob-small-alien-artifact-purple",
        "angels-bio-processing-alien-small",
        "e[purple]"
      )
    end
    angelsmods.functions.move_item("bob-alien-artifact-purple", "angels-bio-processing-alien-large", "e[purple]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-purple-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
  else
    OV.disable_recipe("angels-small-alien-artifact-purple")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-purple")
  OV.disable_recipe({ "angels-alien-pre-artifact-purple", "angels-small-alien-artifact-purple" })
end

-------------------------------------------------------------------------------
-- GREEN ARTIFACTS ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["green"] then
  if angelsmods.trigger.bio_pastes["zinc"] then
    if bobmods and bobmods.plates then
      OV.patch_recipes({
        {
          name = "angels-alien-pre-artifact-green",
          ingredients = { { type = "item", name = "bob-emerald-4", amount = 1 } },
        },
      })
    end
  end

  if data.raw.item["bob-small-alien-artifact-green"] then
    OV.modify_output(
      "angels-small-alien-artifact-green",
      { type = "item", name = "bob-small-alien-artifact-green", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["zinc"] then
      angelsmods.functions.move_item("bob-small-alien-artifact-green", "angels-bio-processing-alien-small", "f[green]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-green", "angels-bio-processing-alien-large", "f[green]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-green-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
  else
    OV.disable_recipe("angels-small-alien-artifact-green")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-green")
  OV.disable_recipe({ "angels-alien-pre-artifact-green", "angels-small-alien-artifact-green" })
end

-------------------------------------------------------------------------------
-- BASE ARTIFACTS (pink) ------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["base"] then -- pink
  if angelsmods.trigger.bio_pastes["iron"] then
  end

  if data.raw.item["bob-small-alien-artifact"] then
    OV.modify_output(
      "angels-small-alien-artifact",
      { type = "item", name = "bob-small-alien-artifact", amount = "angels-void" }
    )

    if angelsmods.trigger.bio_pastes["iron"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact", "angels-bio-processing-alien-small", "g[base]")
    end
    angelsmods.functions.move_item("bob-alien-artifact", "angels-bio-processing-alien-large", "g[base]")
  else
    OV.disable_recipe("angels-small-alien-artifact")
  end
else
  angelsmods.functions.hide("angels-alien-pre-artifact-base")
  OV.disable_recipe({ "angels-alien-pre-artifact-base", "angels-small-alien-artifact" })
end

-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["base"] then
  if data.raw.technology["bob-artifact-processing"] then
    OV.add_prereq("bob-artifact-processing", "angels-bio-processing-alien-3")
  end
else
  OV.disable_technology("angels-bio-processing-alien-3")
end

-------------------------------------------------------------------------------
if bobmods and bobmods.plates then
  data.raw["item-subgroup"]["bob-alien-resource"].group = "angels-bio-processing-alien"
  data.raw["item-subgroup"]["bob-alien-resource"].order = "e[alien-products]-d[resources]"
end
