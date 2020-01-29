--HEALTH:
--SCARAB: 150/300/450/600/750
--BITER 100/200/300/400/500
--SPITTER 50/100/150/200/250

--DAMAGE:
--SCARAB: 5/5,10/5,20/5,30/5,40/5
--BITER: 10/5, 20/10, 30/20, 40/30, 50/40
--SPITTER: 10/10, 20/20, 30/30, 40/40, 50/50

--SPEED:
--SCARAB: 0.185, 0.185, 0.185, 0.17, 0.17
--BITER: 0.185, 0.185, 0.185, 0.17, 0.17
--SPITTER: 0.185, 0.185, 0.185, 0.17, 0.17

--BITER DEFINITIONS
	small_biter =
		{
			appearance = {
				type = "biter",
				name = "small",
				scale = 0.5,
				tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.185,
				health = 100,
				corpse= "small_biter_corpse",
			},
			attack = {
				category = "melee",
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 10,
				damage2 = 5,
			},
			resistance = {
				{type = "physical", decrease = 0, percent = 0},
				{type = "fire", decrease = 5, percent = 20},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 5, percent = 20},
				{type = "plasma", decrease = 0, percent = 0}
			}
		}

	medium_biter =
		{
			appearance = {
				type = "biter",
				name = "medium",
				scale = 0.7,
				tint1 = {r=0.78, g=0.15, b=0.15, a=0.6},
				tint2 = {r=0.9, g=0.3, b=0.3, a=0.75},
				speed = 0.185,
				health = 200,
				corpse= "medium_biter_corpse",
			},
			attack = {
				category = "melee",
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 20,
				damage2 = 10,
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 20},
				{type = "fire", decrease = 0, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 0, percent = 10},
				{type = "plasma", decrease = 5, percent = 20}
			}
		}

	big_biter =
		{
			appearance = {
				type = "biter",
				name = "big",
				scale = 1,
				tint1 = {r=0.34, g=0.68, b=0.90, a=0.6},
				tint2 = {r=0.31, g=0.61, b=0.95, a=0.85},
				speed = 0.185,
				health = 300,
				corpse= "big_biter_corpse",
			},
			attack = {
				category = "melee",
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 30,
				damage2 = 20,
			},
			resistance = {
				{type = "physical", decrease = 10, percent = 30},
				{type = "fire", decrease = 5, percent = 20},
				{type = "explosion", decrease = 0, percent = 0},
				{type = "laser", decrease = 5, percent = 20},
				{type = "plasma", decrease = 10, percent = 30}
			}
		}

	behemoth_biter =
		{
			appearance = {
				type = "biter",
				name = "behemoth",
				scale = 1.2,
				tint1 = {r=0.3, g=0.9, b=0.3, a=0.75},
				tint2 = {r=0.88, g=0.24, b=0.24, a=0.9},
				speed = 0.17,
				health = 400,
				corpse= "big_biter_corpse",
			},
			attack = {
				category = "melee",
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 40,
				damage2 = 30,
			},
			resistance = {
				{type = "physical", decrease = 15, percent = 40},
				{type = "fire", decrease = 0, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 0, percent = 10},
				{type = "plasma", decrease = 15, percent = 40}
			}
		}
	colossal_biter =
		{
			appearance = {
				type = "biter",
				name = "colossal",
				scale = 1.4,
				tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.17,
				health = 500,
				corpse= "big_biter_corpse",
			},
			attack = {
				category = "melee",
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 50,
				damage2 = 40,
			},
			resistance = {
				{type = "physical", decrease = 10, percent = 30},
				{type = "fire", decrease = 5, percent = 30},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 5, percent = 30},
				{type = "plasma", decrease = 10, percent = 30}
			}
		}
--SPITTER DEFINITIONS
	small_spitter =
		{
			appearance = {
				type = "spitter",
				name = "small",
				scale = 0.5,
				tint1 = {r=0.68, g=0.4, b=0, a=1},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.185,
				health = 50,
				corpse= "small_spitter_corpse",
			},
			attack = {
				range = 15,
				cooldown = 100,
				min_attack_distance = 10,
				creation_distance = 1.9,
				damage_modifier = 1,
				warmup = 30,
				damage = 10,
			},
			resistance = {
				{type = "physical", decrease = 0, percent = 0},
				{type = "fire", decrease = 5, percent = 20},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 5, percent = 20},
				{type = "plasma", decrease = 0, percent = 0}
			}
		}

	medium_spitter =
		{
			appearance = {
				type = "spitter",
				name = "medium",
				scale = 0.7,
				tint1 = {r=0.83, g=0.39, b=0.36, a=0.75},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.185,
				health = 100,
				corpse= "medium_spitter_corpse",
			},
			attack = {
				range = 15,
				cooldown = 100,
				min_attack_distance = 10,
				creation_distance = 1.9,
				damage_modifier = 1,
				warmup = 30,
				damage = 20,
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 20},
				{type = "fire", decrease = 0, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 0, percent = 10},
				{type = "plasma", decrease = 5, percent = 20}
			}
		}

	big_spitter =
		{
			appearance = {
				type = "spitter",
				name = "big",
				scale = 1,
				tint1 = {r=0.54, g=0.58, b=0.85, a=0.6},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.185,
				health = 150,
				corpse= "big_spitter_corpse",
			},
			attack = {
				range = 15,
				cooldown = 100,
				min_attack_distance = 10,
				creation_distance = 1.9,
				damage_modifier = 1,
				warmup = 30,
				damage = 30,
			},
			resistance = {
				{type = "physical", decrease = 10, percent = 30},
				{type = "fire", decrease = 5, percent = 20},
				{type = "explosion", decrease = 0, percent = 0},
				{type = "laser", decrease = 5, percent = 20},
				{type = "plasma", decrease = 10, percent = 30}
			}
		}

	behemoth_spitter =
		{
			appearance = {
				type = "spitter",
				name = "behemoth",
				scale = 1.2,
				tint1 = {r=0.3, g=0.9, b=0.3, a=0.75},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.185,
				health = 200,
				corpse= "big_spitter_corpse",
			},
			attack = {
				range = 15,
				cooldown = 100,
				min_attack_distance = 10,
				creation_distance = 1.9,
				damage_modifier = 1,
				warmup = 30,
				damage = 40,
			},
			resistance = {
				{type = "physical", decrease = 15, percent = 40},
				{type = "fire", decrease = 0, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 0, percent = 10},
				{type = "plasma", decrease = 15, percent = 40}
			}
		}

	colossal_spitter =
		{
			appearance = {
				type = "spitter",
				name = "colossal",
				scale = 1.4,
				tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
				tint2 = {r=1, g=0.63, b=0, a=0.4},
				speed = 0.185,
				health = 250,
				corpse= "big_spitter_corpse",
			},
			attack = {
				range = 15,
				cooldown = 100,
				min_attack_distance = 10,
				creation_distance = 1.9,
				damage_modifier = 1,
				warmup = 30,
				damage = 50,
			},
			resistance = {
				{type = "physical", decrease = 10, percent = 30},
				{type = "fire", decrease = 5, percent = 30},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 5, percent = 30},
				{type = "plasma", decrease = 10, percent = 30}
			}
		}
--SCARAB DEFINITIONS
	small_scarab =
		{
			appearance = {
				type = "scarab",
				name = "small",
				scale = 0.4,
				tint1 = {r=0.68, g=0.4, b=0},
				tint2 = {r=164/255, g=8/255, b=8/255, a=0.4},
				speed = 0.185,
				health = 150,
				corpse="small_biter_corpse",
			},
			attack = {
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 5,
			},
			resistance = {
				{type = "physical", decrease = 2.5, percent = 20},
				{type = "fire", decrease = 7.5, percent = 40},
				{type = "explosion", decrease = 7.5, percent = 30},
				{type = "laser", decrease = 7.5, percent = 40},
				{type = "plasma", decrease = 2.5, percent = 20}
			}
		}

	medium_scarab =
		{
			appearance = {
				type = "scarab",
				name = "medium",
				scale = 0.6,
				tint1 = {r=0.83, g=0.39, b=0.36},
				tint2 = {r=164/255, g=8/255, b=8/255, a=0.4},
				speed = 0.185,
				health = 300,
				corpse="medium_biter_corpse",
			},
			attack = {
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 10,
			},
			resistance = {
				{type = "physical", decrease = 7.5, percent = 40},
				{type = "fire", decrease = 2.5, percent = 30},
				{type = "explosion", decrease = 7.5, percent = 30},
				{type = "laser", decrease = 2.5, percent = 30},
				{type = "plasma", decrease = 7.5, percent = 40}
			}
		}

	big_scarab =
		{
			appearance = {
				type = "scarab",
				name = "big",
				scale = 0.9,
				tint1 = {r=0.54, g=0.58, b=0.85},
				tint2 = {r=164/255, g=8/255, b=8/255, a=0.4},
				speed = 0.185,
				health = 450,
				corpse="big_biter_corpse",
			},
			attack = {
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 20,
			},
			resistance = {
				{type = "physical", decrease = 12.5, percent = 50},
				{type = "fire", decrease = 7.5, percent = 40},
				{type = "explosion", decrease = 2.5, percent = 20},
				{type = "laser", decrease = 7.5, percent = 40},
				{type = "plasma", decrease = 12.5, percent = 50}
			}
		}

	behemoth_scarab =
		{
			appearance = {
				type = "scarab",
				name = "behemoth",
				scale = 1.1,
				tint1 = {r=0.3, g=0.9, b=0.3},
				tint2 = {r=164/255, g=8/255, b=8/255, a=0.4},
				speed = 0.185,
				health = 600,
				corpse="big_biter_corpse",
			},
			attack = {
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 30,
			},
			resistance = {
				{type = "physical", decrease = 17.5, percent = 60},
				{type = "fire", decrease = 12.5, percent = 30},
				{type = "explosion", decrease = 7.5, percent = 30},
				{type = "laser", decrease = 12.5, percent = 30},
				{type = "plasma", decrease = 17.5, percent = 60}
			}
		}

	colossal_scarab =
		{
			appearance = {
				type = "scarab",
				name = "colossal",
				scale = 1.3,
				tint1 = {r=255/255, g=174/255, b=1/255},
				tint2 = {r=164/255, g=8/255, b=8/255, a=0.4},
				speed = 0.185,
				health = 750,
				corpse="big_biter_corpse",
			},
			attack = {
				range = 0.5,
				cooldown = 35,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = nil,
				warmup = nil,
				damage = 40,
			},
			resistance = {
				{type = "physical", decrease = 12.5, percent = 50},
				{type = "fire", decrease = 7.5, percent = 50},
				{type = "explosion", decrease = 7.5, percent = 30},
				{type = "laser", decrease = 7.5, percent = 50},
				{type = "plasma", decrease = 12.5, percent = 50}
			}
		}

--PSYKER DEFINITIONS
	small_psyker =
		{
			appearance = {
				type = "psyker",
				name = "small",
				scale = 0.5,
				tint1 = {r=1/255, g=121/255, b=255/255, a=0.65},
				tint2 = {r=118/255, g=210/255, b=209/255, a=0.4},
				speed = 0.185,
				health = 100,
				corpse= "small_spitter_corpse",
			},
			attack = {
				range = 7,
				cooldown = 50,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = 1,
				warmup = nil,
				damage = 10,
			},
			resistance = {
				{type = "physical", decrease = 0, percent = 0},
				{type = "fire", decrease = 5, percent = 20},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 5, percent = 20},
				{type = "plasma", decrease = 0, percent = 0}
			}
		}

	medium_psyker =
		{
			appearance = {
				type = "psyker",
				name = "medium",
				scale = 0.7,
				tint1 = {r=1/255, g=121/255, b=255/255, a=0.65},
				tint2 = {r=118/255, g=210/255, b=209/255, a=0.4},
				speed = 0.185,
				health = 200,
				corpse= "medium_spitter_corpse",
			},
			attack = {
				range = 7,
				cooldown = 50,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = 1,
				warmup = nil,
				damage = 20,
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 20},
				{type = "fire", decrease = 0, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 0, percent = 10},
				{type = "plasma", decrease = 5, percent = 20}
			}
		}

	big_psyker =
		{
			appearance = {
				type = "psyker",
				name = "big",
				scale = 1,
				tint1 = {r=1/255, g=121/255, b=255/255, a=0.65},
				tint2 = {r=118/255, g=210/255, b=209/255, a=0.4},
				speed = 0.185,
				health = 300,
				corpse= "big_spitter_corpse",
			},
			attack = {
				range = 7,
				cooldown = 50,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = 1,
				warmup = nil,
				damage = 30,
			},
			resistance = {
				{type = "physical", decrease = 10, percent = 30},
				{type = "fire", decrease = 5, percent = 20},
				{type = "explosion", decrease = 0, percent = 0},
				{type = "laser", decrease = 5, percent = 20},
				{type = "plasma", decrease = 10, percent = 30}
			}
		}

	behemoth_psyker =
		{
			appearance = {
				type = "psyker",
				name = "behemoth",
				scale = 1.2,
				tint1 = {r=1/255, g=121/255, b=255/255, a=0.65},
				tint2 = {r=118/255, g=210/255, b=209/255, a=0.4},
				speed = 0.185,
				health = 400,
				corpse= "big_spitter_corpse",
			},
			attack = {
				range = 7,
				cooldown = 50,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = 1,
				warmup = nil,
				damage = 40,
			},
			resistance = {
				{type = "physical", decrease = 15, percent = 40},
				{type = "fire", decrease = 0, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 0, percent = 10},
				{type = "plasma", decrease = 15, percent = 40}
			}
		}

	colossal_psyker =
		{
			appearance = {
				type = "psyker",
				name = "colossal",
				scale = 1.4,
				tint1 = {r=1/255, g=121/255, b=255/255, a=0.65},
				tint2 = {r=118/255, g=210/255, b=209/255, a=0.4},
				speed = 0.185,
				health = 500,
				corpse= "big_spitter_corpse",
			},
			attack = {
				range = 7,
				cooldown = 50,
				min_attack_distance = nil,
				creation_distance = nil,
				damage_modifier = 1,
				warmup = nil,
				damage = 50,
			},
			resistance = {
				{type = "physical", decrease = 10, percent = 30},
				{type = "fire", decrease = 5, percent = 30},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "laser", decrease = 5, percent = 30},
				{type = "plasma", decrease = 10, percent = 30}
			}
		}

--SPAWNER DEFINITIONS
	scarab_spawner =
		{
			appearance = {
				type = "scarab",
				tint = {r=255/255, g=174/255, b=1/255},
				health = 500,
				spawn_cooldown = {360, 150}
			},
			results = {
				{"small-scarab", {{0.0, 0.2}, {0.4, 0.0}}},
				{"medium-scarab", {{0.2, 0.0}, {0.6, 0.0}}},
				{"big-scarab", {{0.4, 0.0}, {0.8, 0.4}}},
				{"behemoth-scarab", {{0.6, 0.0}, {1.0, 0.6}}},
				{"colossal-scarab", {{0.8, 0.0}, {1.0, 0.8}}},
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "fire", decrease = 30, percent = 60},
				{type = "laser", decrease = 5, percent = 10},
				{type = "plasma", decrease = 5, percent = 10}
			}
		}

	biter_spawner =
		{
			appearance = {
				type = "biter",
				tint = {r=255/255, g=174/255, b=1/255},
				health = 500,
				spawn_cooldown = {360, 150}
			},
			results = {
				{"small-biter", {{0.0, 0.2}, {0.4, 0.0}}},
				{"medium-biter", {{0.2, 0.0}, {0.6, 0.0}}},
				{"big-biter", {{0.4, 0.0}, {0.8, 0.4}}},
				{"behemoth-biter", {{0.6, 0.0}, {1.0, 0.6}}},
				{"colossal-biter", {{0.8, 0.0}, {1.0, 0.8}}},
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "fire", decrease = 30, percent = 60},
				{type = "laser", decrease = 5, percent = 10},
				{type = "plasma", decrease = 5, percent = 10}
			}
		}

	spitter_spawner =
		{
			appearance = {
				type = "spitter",
				tint = {r=255/255, g=255/255, b=0/255},
				health = 500,
				spawn_cooldown = {360, 150}
			},
			results = {
				{"small-spitter", {{0.0, 0.2}, {0.4, 0.0}}},
				{"medium-spitter", {{0.2, 0.0}, {0.6, 0.0}}},
				{"big-spitter", {{0.4, 0.0}, {0.8, 0.4}}},
				{"behemoth-spitter", {{0.6, 0.0}, {1.0, 0.6}}},
				{"colossal-spitter", {{0.8, 0.0}, {1.0, 0.8}}},
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "fire", decrease = 30, percent = 60},
				{type = "laser", decrease = 5, percent = 10},
				{type = "plasma", decrease = 5, percent = 10}
			}
		}

	psyker_spawner =
		{
			appearance = {
				type = "psyker",
				tint = {r=255/255, g=255/255, b=0/255},
				health = 500,
				spawn_cooldown = {360, 150}
			},
			results = {
				{"small-psyker", {{0.0, 0.2}, {0.4, 0.0}}},
				{"medium-psyker", {{0.2, 0.0}, {0.6, 0.0}}},
				{"big-psyker", {{0.4, 0.0}, {0.8, 0.4}}},
				{"behemoth-psyker", {{0.6, 0.0}, {1.0, 0.6}}},
				{"colossal-psyker", {{0.8, 0.0}, {1.0, 0.8}}},
			},
			resistance = {
				{type = "physical", decrease = 5, percent = 10},
				{type = "explosion", decrease = 5, percent = 10},
				{type = "fire", decrease = 30, percent = 60},
				{type = "laser", decrease = 5, percent = 10},
				{type = "plasma", decrease = 5, percent = 10}
			}
		}
