local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")

--vanilla fixes
pre_req_replace("automation-2", "tech-green-packs", "tech-red-packs","angels-components-construction-2")
OV.add_prereq("tech-green-circuit","automation-2")
--bobs fixes
if mods["bobassembly"] then
  pre_req_replace("automation-4", "tech-blue-packs", "tech-orange-packs","angels-components-construction-4")
  OV.add_prereq("tech-blue-circuit","automation-4")
  if settings.startup["bobmods-assembly-distilleries"] then
    pre_req_replace("bob-distillery-3", "tech-blue-packs", "tech-orange-packs","angels-components-construction-4")
    OV.add_prereq("tech-blue-circuit","bob-distillery-3")
  end
end
if mods["boblogistics"] then
  pre_req_replace("bob-robo-modular-2", "tech-blue-packs", "tech-orange-packs")
  pre_req_replace("toolbelt-2", "tech-blue-packs", "tech-orange-packs")
end
if mods["bobmining"] then
  pre_req_replace("steel-axe-4", "tech-blue-packs", "tech-orange-packs")
  pre_req_replace("battery-2", "tech-blue-packs", "tech-orange-packs")
end
if mods["bobplates"] then
  pre_req_replace("gem-processing-2", "tech-blue-packs", "tech-orange-packs")
  pre_req_replace("battery-2", "tech-blue-packs", "tech-orange-packs")
  --alien resources
  pre_req_replace("alien-blue-research", "tech-yellow-packs", "tech-blue-packs")
  pre_req_replace("alien-orange-research", "tech-yellow-packs", "tech-blue-packs")
  pre_req_replace("alien-purple-research", "tech-yellow-packs", "tech-blue-packs")
  pre_req_replace("alien-yellow-research", "tech-yellow-packs", "tech-blue-packs")
  pre_req_replace("alien-green-research", "tech-yellow-packs", "tech-blue-packs")
  pre_req_replace("alien-red-research", "tech-yellow-packs", "tech-blue-packs")
end
if mods["bobwarfare"] then
  pre_req_replace("bob-plasma-turrets-3", "tech-blue-packs", "tech-orange-packs")
  pre_req_replace("battery-2", "tech-blue-packs", "tech-orange-packs")
  pre_req_replace("bob-rocket", "tungsten-processing", "angels-explosives-1")
  pre_req_replace("bob-sniper-turrets-2", "tech-blue-packs", "tech-orange-packs")
  pre_req_replace("nitroglycerin-processing", "chlorine-processing-2", "bio-nutrient-paste") --should this actually be done in bioprocessing?
end
if mods["boblibrary"] then
  --Add the logistics lab to a tech tech unlock
  OV.add_unlock("tech-specialised-labs-advanced","angels-enhance-lab-3")
end
OV.execute()
