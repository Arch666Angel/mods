if mods["angelsbioprocessing"] and data.raw.item["solid-paper"] then
  -- replace paper with nilaus TP
  data.raw.item["solid-paper"].icon = "__angelsaddons-nilaus__/graphics/icons/nilaus-paper.png"
  data.raw.item["solid-paper"].icon_size = 256
  data.raw.item["solid-paper"].icons = nil
  data.raw.item["solid-paper"].localised_name =
    { "item-name.nilaus-paper", data.raw.item["solid-paper"].localised_name or { "item-name.solid-paper" } }
  data.raw.item["solid-paper"].localised_description = { "item-description.nilaus-paper" }

  -- replace recipe icons
  data.raw.recipe["paper-bleaching-1"].icons[1].icon = data.raw.item["solid-paper"].icon
  data.raw.recipe["paper-bleaching-1"].icons[1].icon_size = data.raw.item["solid-paper"].icon_size
  data.raw.recipe["paper-bleaching-1"].icons[1].scale = 32 / data.raw.item["solid-paper"].icon_size
  data.raw.recipe["paper-bleaching-2"].icons[1].icon = data.raw.item["solid-paper"].icon
  data.raw.recipe["paper-bleaching-2"].icons[1].icon_size = data.raw.item["solid-paper"].icon_size
  data.raw.recipe["paper-bleaching-2"].icons[1].scale = 32 / data.raw.item["solid-paper"].icon_size
  data.raw.recipe["paper-bleaching-3"].icons[1].icon = data.raw.item["solid-paper"].icon
  data.raw.recipe["paper-bleaching-3"].icons[1].icon_size = data.raw.item["solid-paper"].icon_size
  data.raw.recipe["paper-bleaching-3"].icons[1].scale = 32 / data.raw.item["solid-paper"].icon_size

  -- replace technology icons
  data.raw.technology["bio-paper-1"].icon = data.raw.item["solid-paper"].icon
  data.raw.technology["bio-paper-1"].icon_size = data.raw.item["solid-paper"].icon_size
  data.raw.technology["bio-paper-1"].icons = data.raw.item["solid-paper"].icons
  data.raw.technology["bio-paper-2"].icon = data.raw.item["solid-paper"].icon
  data.raw.technology["bio-paper-2"].icon_size = data.raw.item["solid-paper"].icon_size
  data.raw.technology["bio-paper-2"].icons = data.raw.item["solid-paper"].icons
  data.raw.technology["bio-paper-3"].icon = data.raw.item["solid-paper"].icon
  data.raw.technology["bio-paper-3"].icon_size = data.raw.item["solid-paper"].icon_size
  data.raw.technology["bio-paper-3"].icons = data.raw.item["solid-paper"].icons

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
      category = "melee",
      target_type = "entity",
    },
    animation = compilatron.attack_parameters.animation,
  }
  data:extend({ compilatron })
end
