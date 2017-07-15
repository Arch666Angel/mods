data:extend(
{
--CHESTS
	{
    type = "recipe",
    name = "angels-big-chest",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"iron-chest", 1},
      {"iron-plate", 10},
	},
    results=
    {
      {type="item", name="angels-big-chest", amount=1},
    },
    },
	{
    type = "recipe",
    name = "angels-logistic-chest-requester",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"angels-big-chest", 1},
      {"iron-plate", 10},
      {"electronic-circuit", 5}
	},
    results=
    {
      {type="item", name="angels-logistic-chest-requester", amount=1},
    },
    },
	{
    type = "recipe",
    name = "angels-logistic-chest-passive-provider",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"angels-big-chest", 1},
      {"iron-plate", 10},
      {"electronic-circuit", 5}
	},
    results=
    {
      {type="item", name="angels-logistic-chest-passive-provider", amount=1},
    },
    },
	{
    type = "recipe",
    name = "angels-logistic-chest-active-provider",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"angels-big-chest", 1},
      {"iron-plate", 10},
      {"electronic-circuit", 5}
	},
    results=
    {
      {type="item", name="angels-logistic-chest-active-provider", amount=1},
    },
    },
	{
    type = "recipe",
    name = "angels-logistic-chest-storage",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"angels-big-chest", 1},
      {"iron-plate", 10},
      {"electronic-circuit", 5}
	},
    results=
    {
      {type="item", name="angels-logistic-chest-storage", amount=1},
    },
    },
--CARGO ROBOTS
	{
    type = "recipe",
    name = "construction-roboport",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"steel-plate", 40},
      {"stone-brick", 20},
      {"iron-gear-wheel", 40},
      {"electronic-circuit", 40}
	},
    results=
    {
      {type="item", name="construction-roboport", amount=1},
    },
    },
	{
    type = "recipe",
    name = "angels-construction-robot",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"steel-plate", 5},
      {"iron-gear-wheel", 5},
	  {"engine-unit", 1},
      {"electronic-circuit", 2}
	},
    results=
    {
      {type="item", name="angels-construction-robot", amount=1},
    },
    },
--CARGO ROBOTS
	{
    type = "recipe",
    name = "cargo-roboport",
    enabled = false,
    energy_required = 5,
    ingredients ={
      {"steel-plate", 60},
      {"stone-brick", 40},
      {"iron-gear-wheel", 60},
      {"electronic-circuit", 60}
	},
    results=
    {
      {type="item", name="cargo-roboport", amount=1},
    },
    },
    {
    type = "recipe",
    name = "cargo-robot",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"steel-plate", 5},
      {"iron-gear-wheel", 5},
	  {"engine-unit", 1},
      {"electronic-circuit", 2}
	},
    results=
    {
      {type="item", name="cargo-robot", amount=1},
    },
    },
    {
    type = "recipe",
    name = "cargo-robot-2",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"steel-plate", 5},
      {"iron-gear-wheel", 5},
	  {"electric-engine-unit", 5},
      {"advanced-circuit", 5}
	},
    results=
    {
      {type="item", name="cargo-robot-2", amount=1},
    },
    },
--ZONE EXPANDER
    {
    type = "recipe",
    name = "angels-zone-expander",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"iron-plate", 5},
      {"electronic-circuit", 2},
	},
    results=
    {
      {type="item", name="angels-zone-expander", amount=1},
    },
    },
    {
    type = "recipe",
    name = "angels-zone-expander-2",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"steel-plate", 5},
	  {"iron-plate", 5},
      {"advanced-circuit", 2},
	},
    results=
    {
      {type="item", name="angels-zone-expander-2", amount=1},
    },
    },
--RELAY STATION
    {
    type = "recipe",
    name = "angels-relay-station",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"iron-plate", 5},
      {"electronic-circuit", 2},
	},
    results=
    {
      {type="item", name="angels-relay-station", amount=1},
    },
    },
    {
    type = "recipe",
    name = "angels-relay-station-2",
    enabled = false,
    energy_required = 5,
    ingredients ={
	  {"steel-plate", 5},
	  {"iron-plate", 5},
      {"advanced-circuit", 2},
	},
    results=
    {
      {type="item", name="angels-relay-station-2", amount=1},
    },
    },
  }
  )