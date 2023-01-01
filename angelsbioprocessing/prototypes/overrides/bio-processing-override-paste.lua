local OV = angelsmods.functions.OV

if angelsmods.triggers.bio_pastes["cobalt"] then
else
  angelsmods.functions.add_flag("paste-cobalt", "hidden")
  OV.disable_recipe({ "paste-cobalt" })
end

if angelsmods.triggers.bio_pastes["copper"] then
else
  angelsmods.functions.add_flag("paste-copper", "hidden")
  OV.disable_recipe({ "paste-copper" })
end

if angelsmods.triggers.bio_pastes["gold"] then
else
  angelsmods.functions.add_flag("paste-gold", "hidden")
  OV.disable_recipe({ "paste-gold" })
end

if angelsmods.triggers.bio_pastes["iron"] then
else
  angelsmods.functions.add_flag("paste-iron", "hidden")
  OV.disable_recipe({ "paste-iron" })
end

if angelsmods.triggers.bio_pastes["silver"] then
else
  angelsmods.functions.add_flag("paste-silver", "hidden")
  OV.disable_recipe({ "paste-silver" })
end

if angelsmods.triggers.bio_pastes["titanium"] then
else
  angelsmods.functions.add_flag("paste-titanium", "hidden")
  OV.disable_recipe({ "paste-titanium" })
end

if angelsmods.triggers.bio_pastes["tungsten"] then
else
  angelsmods.functions.add_flag("paste-tungsten", "hidden")
  OV.disable_recipe({ "paste-tungsten" })
end

if angelsmods.triggers.bio_pastes["zinc"] then
else
  angelsmods.functions.add_flag("paste-zinc", "hidden")
  OV.disable_recipe({ "paste-zinc" })
end
