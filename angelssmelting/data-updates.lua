--TRIGGER CHECKS
--alloy-brass
if angelsmods.trigger.smelting_products["brass"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
end
--alloy-bronze
if angelsmods.trigger.smelting_products["bronze"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
--alloy-cobalt-steel
if angelsmods.trigger.smelting_products["cobalt-steel"].plate then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
  angelsmods.trigger.smelting_products["steel"].ingot = true
end
--alloy-gunmetal
if angelsmods.trigger.smelting_products["gunmetal"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
--alloy-invar
if angelsmods.trigger.smelting_products["invar"].plate then
  angelsmods.trigger.smelting_products["steel"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].ingot = true
end
--alloy-nitinol
if angelsmods.trigger.smelting_products["nitinol"].plate then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["titanium"].ingot = true
end
--alloy-solder
if angelsmods.trigger.smelting_products["solder"].wire then
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["lead"].plate = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["silver"].ingot = true
end
--alloy-steel
if angelsmods.trigger.smelting_products["iron"].rod then
  angelsmods.trigger.smelting_products["steel"].rod = true
end
if angelsmods.trigger.smelting_products["steel"].rod then
  angelsmods.trigger.smelting_products["steel"].plate = true
end
if angelsmods.trigger.smelting_products["steel"].plate then
  angelsmods.trigger.smelting_products["steel"].ingot = true
end
if angelsmods.trigger.smelting_products["steel"].powder then
  angelsmods.trigger.smelting_products["steel"].ingot = true
end
if angelsmods.trigger.smelting_products["steel"].ingot then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end
--aluminium
if angelsmods.trigger.smelting_products["aluminium"].powder then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
end
if angelsmods.trigger.smelting_products["aluminium"].plate then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
  angelsmods.trigger.smelting_products["manganese"].ingot = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
--chrome
if angelsmods.trigger.smelting_products["chrome"].powder then
  angelsmods.trigger.smelting_products["chrome"].ingot = true
end
if angelsmods.trigger.smelting_products["chrome"].plate then
  angelsmods.trigger.smelting_products["chrome"].ingot = true
end
--tungsten
if angelsmods.trigger.smelting_products["tungsten"].plate then
  angelsmods.trigger.smelting_products["tungsten"].powder = true
  angelsmods.trigger.smelting_products["nickel"].powder = true
  angelsmods.trigger.smelting_products["cobalt"].powder = true
end
--cobalt
if angelsmods.trigger.smelting_products["cobalt"].plate then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
end
if angelsmods.trigger.smelting_products["cobalt"].powder then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
end
--copper
if angelsmods.trigger.smelting_products["copper"].wire then
  angelsmods.trigger.smelting_products["copper"].plate = true
end
if angelsmods.trigger.smelting_products["copper"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["copper"].powder then
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
--glass
if angelsmods.trigger.smelting_products["glass"].board then
  angelsmods.trigger.smelting_products["glass"].fibre = true
end
if angelsmods.trigger.smelting_products["glass"].fibre then
  angelsmods.trigger.smelting_products["glass"].mixture = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
if angelsmods.trigger.smelting_products["glass"].plate then
  angelsmods.trigger.smelting_products["glass"].mixture = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
--gold
if angelsmods.trigger.smelting_products["gold"].powder then
  angelsmods.trigger.smelting_products["gold"].ingot = true
end
if angelsmods.trigger.smelting_products["gold"].wire then
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["gold"].plate then
  angelsmods.trigger.smelting_products["gold"].ingot = true
end
--iron
if angelsmods.trigger.smelting_products["iron"].powder then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end
if angelsmods.trigger.smelting_products["iron"].rod then
  angelsmods.trigger.smelting_products["iron"].plate = true
end
if angelsmods.trigger.smelting_products["iron"].plate then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end
--lead
if angelsmods.trigger.smelting_products["lead"].powder then
  angelsmods.trigger.smelting_products["lead"].ingot = true
end
if angelsmods.trigger.smelting_products["lead"].plate then
  angelsmods.trigger.smelting_products["lead"].ingot = true
end
--nickel
if angelsmods.trigger.smelting_products["nickel"].plate then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
end
if angelsmods.trigger.smelting_products["nickel"].powder then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
end
--platinum
if angelsmods.trigger.smelting_products["platinum"].wire then
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["platinum"].plate then
  angelsmods.trigger.smelting_products["platinum"].ingot = true
end
if angelsmods.trigger.smelting_products["platinum"].powder then
  angelsmods.trigger.smelting_products["platinum"].ingot = true
end
--silicon
if angelsmods.trigger.smelting_products["silicon"].powder then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
end
if angelsmods.trigger.smelting_products["silicon"].wafer then
  angelsmods.trigger.smelting_products["silicon"].mono = true
end
if angelsmods.trigger.smelting_products["silicon"].mono then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
end
--silver
if angelsmods.trigger.smelting_products["silver"].wire then
  angelsmods.trigger.smelting_products["silver"].ingot = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["silver"].plate then
  angelsmods.trigger.smelting_products["silver"].ingot = true
end
if angelsmods.trigger.smelting_products["silver"].powder then
  angelsmods.trigger.smelting_products["silver"].ingot = true
end
--tin
if angelsmods.trigger.smelting_products["tin"].wire then
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["tin"].plate then
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
if angelsmods.trigger.smelting_products["tin"].powder then
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
--titanium
if angelsmods.trigger.smelting_products["titanium"].plate then
  angelsmods.trigger.smelting_products["titanium"].ingot = true
  angelsmods.trigger.smelting_products["manganese"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
  angelsmods.trigger.smelting_products["chrome"].ingot = true
end
if angelsmods.trigger.smelting_products["titanium"].powder then
  angelsmods.trigger.smelting_products["titanium"].ingot = true
end
--zinc
if angelsmods.trigger.smelting_products["zinc"].plate then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
if angelsmods.trigger.smelting_products["zinc"].powder then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
--manganese
if angelsmods.trigger.smelting_products["manganese"].powder then
  angelsmods.trigger.smelting_products["manganese"].ingot = true
end
if angelsmods.trigger.smelting_products["manganese"].plate then
  angelsmods.trigger.smelting_products["manganese"].ingot = true
end
if angelsmods.trigger.smelting_products["manganese"].ingot then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end

--Generic recipe generation
require("prototypes.smelting-generate")
--Overrides for refining/angels internal
require("prototypes.smelting-override")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
