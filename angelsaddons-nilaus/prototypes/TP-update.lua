if mods["angelsbioprocessing"] and data.raw.item["angels-solid-paper"] then
  -- replace paper with nilaus TP
  data.raw.item["angels-solid-paper"].icon = "__angelsaddons-nilaus__/graphics/icons/nilaus-paper.png"
  data.raw.item["angels-solid-paper"].icon_size = 256
  data.raw.item["angels-solid-paper"].icons = nil
  data.raw.item["angels-solid-paper"].localised_name =
    { "item-name.nilaus-paper", data.raw.item["angels-solid-paper"].localised_name or { "item-name.angels-solid-paper" } }
  data.raw.item["angels-solid-paper"].localised_description = { "item-description.nilaus-paper" }

  -- replace recipe icons
  data.raw.recipe["angels-solid-paper"].icons[1].icon = data.raw.item["angels-solid-paper"].icon
  data.raw.recipe["angels-solid-paper"].icons[1].icon_size = data.raw.item["angels-solid-paper"].icon_size
  data.raw.recipe["angels-solid-paper"].icons[1].scale = 32 / data.raw.item["angels-solid-paper"].icon_size
  data.raw.recipe["angels-solid-paper-2"].icons[1].icon = data.raw.item["angels-solid-paper"].icon
  data.raw.recipe["angels-solid-paper-2"].icons[1].icon_size = data.raw.item["angels-solid-paper"].icon_size
  data.raw.recipe["angels-solid-paper-2"].icons[1].scale = 32 / data.raw.item["angels-solid-paper"].icon_size
  data.raw.recipe["angels-solid-paper-3"].icons[1].icon = data.raw.item["angels-solid-paper"].icon
  data.raw.recipe["angels-solid-paper-3"].icons[1].icon_size = data.raw.item["angels-solid-paper"].icon_size
  data.raw.recipe["angels-solid-paper-3"].icons[1].scale = 32 / data.raw.item["angels-solid-paper"].icon_size

  -- replace technology icons
  data.raw.technology["angels-bio-paper-1"].icon = data.raw.item["angels-solid-paper"].icon
  data.raw.technology["angels-bio-paper-1"].icon_size = data.raw.item["angels-solid-paper"].icon_size
  data.raw.technology["angels-bio-paper-1"].icons = data.raw.item["angels-solid-paper"].icons
  data.raw.technology["angels-bio-paper-2"].icon = data.raw.item["angels-solid-paper"].icon
  data.raw.technology["angels-bio-paper-2"].icon_size = data.raw.item["angels-solid-paper"].icon_size
  data.raw.technology["angels-bio-paper-2"].icons = data.raw.item["angels-solid-paper"].icons
  data.raw.technology["angels-bio-paper-3"].icon = data.raw.item["angels-solid-paper"].icon
  data.raw.technology["angels-bio-paper-3"].icon_size = data.raw.item["angels-solid-paper"].icon_size
  data.raw.technology["angels-bio-paper-3"].icons = data.raw.item["angels-solid-paper"].icons

  -- create a new compilatron
  local compilatron = util.table.deepcopy(data.raw.unit["compilatron"])
  compilatron.localised_name = { string.format("entity-name.%s", compilatron.name) }
  compilatron.name = string.format("nilaus-TP-%s", compilatron.name)
  compilatron.attack_parameters = {
    type = "projectile",
    damage_modifier = 0.001,
    range = 0.5,
    cooldown = 35,
    ammo_category = "melee",
    ammo_type = {
      action = {
        action_delivery = {
          target_effects = {
            damage = {
              amount = 0.001,
              type = "physical",
            },
            type = "damage",
            show_in_tooltip = false,
          },
          type = "instant",
        },
        type = "direct",
      },
      target_type = "entity",
    },
    animation = compilatron.attack_parameters.animation,
  }
  data:extend({ compilatron })
end
