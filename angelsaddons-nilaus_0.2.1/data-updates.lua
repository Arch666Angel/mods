if aai_industry and data.raw.item["electric-motor"] then
	table.insert(data.raw.recipe['nilaus-truck'].normal.ingredients, {"electric-motor", 5})
	table.insert(data.raw.recipe['nilaus-truck'].expensive.ingredients, {"electric-motor", 10})
	table.insert(data.raw.technology['nilaus-truck'].prerequisites, "electricity")
end
