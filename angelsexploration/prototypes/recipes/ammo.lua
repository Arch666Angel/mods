data:extend(
{
  -- CANNON TURRET SHELL
  {
    type = "recipe",
    name = "cannon-turret-shell-1",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"firearm-magazine", 1},
      {"coal", 2}
    },
    results =
    {
      {"cannon-turret-shell-1", 1}
    },
  },
  {
    type = "recipe",
    name = "cannon-turret-shell-2",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"piercing-rounds-magazine", 1},
      {"coal", 4}
    },
    results = {
      {"cannon-turret-shell-2", 1}
    },
  },
  {
    type = "recipe",
    name = "cannon-turret-shell-3",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"uranium-rounds-magazine", 1},
      {"coal", 8}
    },
    results = {
      {"cannon-turret-shell-3", 1}
    },
  },
  -- HEAVY CANNON SHELL
  {
    type = "recipe",
    name = "heavy-cannon-shell",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"cannon-shell", 3}
      --{"lead-plate", 3},
    },
    results =
    {
      {"heavy-cannon-shell", 1}
    },
  },
  {
    type = "recipe",
    name = "heavy-explosive-cannon-shell",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"explosive-cannon-shell", 3}
      --{"lead-plate", 3},
    },
    results =
    {
      {"heavy-explosive-cannon-shell", 1}
    },
  },
  {
    type = "recipe",
    name = "heavy-uranium-cannon-shell",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"uranium-cannon-shell", 3}
      --{"lead-plate", 3},
    },
    results =
    {
      {"heavy-uranium-cannon-shell", 1}
    },
  },
  {
    type = "recipe",
    name = "heavy-explosive-uranium-cannon-shell",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"explosive-uranium-cannon-shell", 3}
      --{"lead-plate", 3},
    },
    results =
    {
      {"heavy-explosive-uranium-cannon-shell", 1}
    },
  },
}
)