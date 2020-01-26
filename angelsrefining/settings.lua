data:extend(
{
   {
    type = "bool-setting",
    name = "angels-enable-auto-barreling",
    setting_type = "startup",
    default_value = false,
    order = "aa",
   },
   {
    type = "bool-setting",
    name = "angels-enable-hide-void",
    setting_type = "startup",
    default_value = true,
    order = "ab",
   },
   {
	type = "double-setting",
	name = "angels-marathon-buildingmulti",
	setting_type = "startup",
	default_value = 2,
	minimum_value = 1,
	maximum_value = 10,
	order = "b",
   },
   {
	type = "double-setting",
	name = "angels-marathon-buildingtime",
	setting_type = "startup",
	default_value = 2,
	minimum_value = 1,
	maximum_value = 10,
	order = "c",
   },
   {
	type = "double-setting",
	name = "angels-marathon-rawmulti",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 1,
	maximum_value = 10,
	order = "d",
   },
   {
	type = "double-setting",
	name = "angels-marathon-intermediatemulti",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 1,
	maximum_value = 10,
	order = "d",
   },
   {
	type = "double-setting",
	name = "angels-starting-resource-base",
	setting_type = "startup",
	default_value = 40000,
	minimum_value = 10000,
	maximum_value = 1000000,
	order = "d",
   },
}
)


