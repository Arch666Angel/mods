local OV = angelsmods.functions.OV
if angelsmods.industries.components then
-- submachine gun
OV.remove_unlock("military", "submachine-gun")
OV.add_unlock("angels-components-weapons-basic", "submachine-gun")
OV.execute()
end