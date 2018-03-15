--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.ores then angelsmods.ores = {} end

angelsmods.ores.yield = 1000
angelsmods.ores.loweryield = 1

require("prototypes.resource-builder")

	make_resource(infinite_coal)
if angelsmods.refining then
	make_resource(infinite_angels_ore1)
	make_resource(infinite_angels_ore2)
	make_resource(infinite_angels_ore3)
	make_resource(infinite_angels_ore4)
	make_resource(infinite_angels_ore5)
	make_resource(infinite_angels_ore6)
else
	make_resource(infinite_iron_ore)
end