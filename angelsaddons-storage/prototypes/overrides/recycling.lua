if mods["angelsrefining"] then
  local updated_recipes = {
    "angels-silo-ore1", 
    "angels-silo-ore2", 
    "angels-silo-ore3", 
    "angels-silo-ore4", 
    "angels-silo-ore5", 
    "angels-silo-ore6", 
    "angels-silo-coal",
  }
  angelsmods.functions.patch_recycling_recipes(updated_recipes)
end
