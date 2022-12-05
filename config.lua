
Loc = {}

Config = {
	Debug = false, -- enable debug mode
	Blips = true, -- Enable Blips?
	BlipNamer = false, -- Enable to Name Blips different things, disable if you already have too many blips as this will group them together
	img = "qb-inventory/html/images/", --Set this to the image directory of your inventory script or "nil" if using newer qb-menu
	CheckMarks = true, -- shows checkmarks if user has the materials to craft an item, set false if causing lag.
	Lan = "en", -- Pick your language here
	JimMenu = true, -- Set this to true if using update qb-menu with icons
	JimShops = false, -- Set this to true if using jim-shops
	Job = nil, -- set this to a job role eg "miner" or nil for no job
	Notify = "qb",
	K4MB1 = false,
	K4MB1Only = false,

	--Lighting for mines
	HangingLights = false, -- if false, will spawn work lights. if true will spawn hanging lights

	Timings = { -- Time it takes to do things
		["Cracking"] = math.random(9000, 11500),
		["Washing"] = math.random(10000, 12000),
		["Panning"] = math.random(25000, 30000),
		["Pickaxe"] = math.random(15000, 22000),
		["Mining"] = math.random(10000, 15000),
		["Laser"] = math.random(4000, 8000),
		["OreRespawn"] = math.random(55000, 75000),
		["Crafting"] = math.random(6000, 9000),
	},

	Locations =  {
		['MineStore'] = {
			--{ name = "Shop - Mining", coords = vector4(-594.96, 2091.3, 131.47, 67.65), sprite = 527, col = 81, blipTrue = true, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD",  },		-- The location where you enter the mine
			--{ name = "Shop - Mining", coords = vector4(2960.9, 2754.14, 43.71, 204.58), sprite = 527, col = 81, blipTrue = true, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD",  },
			--{ name = "Shop - Mining", coords = vector4(1074.89, -1988.19, 30.89, 235.07), sprite = 436, col = 1, blipTrue = true, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD",  },
		},
		['Smelter'] = {	 -- The location of the smelter
			{ name = "Mining - Forge", coords = vector3(1112.29, -2009.9, 31.46), sprite = 618, col = 83, blipTrue = true, },
		},
		["Washing"] = {
			{ name = "Mining - Rinse", coords = vector3(1845.49, 271.59, 161.7), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, 
			{ name = "Mining - Rinse", coords = vector3(1870.91, 395.1, 160.16), sprite = 467, col = 3, 		disp = 6, blipTrue = true },
			{ name = "Mining - Rinse", coords = vector3(1970.46, 547.12, 160.54), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, 
		--  { name = "Mining - Rinse", coords = vector3(2500.64, 6129.4, 162.46), sprite = 467, col = 3, 		disp = 6, blipTrue = true },  ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(907.06, 4377.66, 30.28), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(63.91, 3182.17, 26.28), sprite = 467, col = 3, 			disp = 6, blipTrue = true }, ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(-1446.59, 2255.45, 17.23), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(-201.08, 3854.39, 30.0), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(-455.48, 2917.16, 13.52), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(893.12, 4370.74, 30.35), sprite = 467, col = 3, 		disp = 6, blipTrue = true }, ---removed to cleanup map
		--	{ name = "Mining - Rinse", coords = vector3(912.88, 4365.7, 30.39), sprite = 467, col = 3, 			disp = 6, blipTrue = true }, ---removed to cleanup map

		},
		["Panning"] = {
			{ name = "Mining - Pan", coords = vector3(-1656.67, 2074.85, 87.37), sprite = 467, col = 5, 	disp = 6, blipTrue = true }, 
			{ name = "Mining - Pan", coords = vector3(-1273.16, 1898.19, 100.82), sprite = 467, col = 5, 	disp = 6, blipTrue = true }, 
 			{ name = "Mining - Pan", coords = vector3(-1565.47, 1431.46, 117.1), sprite = 467, col = 5, 	disp = 6, blipTrue = true },

		--	{ name = "Mining - Pan", coords = vector3(-1672.06, 2070.89, 91.68), 	sprite = 467, col = 5, 	disp = 6, blipTrue = true },   ---removed to cleanup map
		--	{ name = "Mining - Pan", coords = vector3(-1551.31, 1444.15, 116.44), 	sprite = 467, col = 5, 	disp = 6, blipTrue = true }, 	---removed to cleanup map
		--	{ name = "Mining - Pan", coords = vector3(-1578.39, 1419.59, 118.13), 	sprite = 467, col = 5, 	disp = 6, blipTrue = true },	---removed to cleanup map
		--	{ name = "Mining - Pan", coords = vector3(-850.78, 4433.95, 14.21), 	sprite = 467, col = 5, 	disp = 6, blipTrue = true },	---removed to cleanup map

		},
		['Cracking'] = { -- The location of the smelter
			{ name = "Stone Cracking", coords = vector4(1109.19, -1992.8, 30.98, 146.88), sprite = 566, col = 81, disp = 6, blipTrue = false, prop = `prop_vertdrill_01` }, -- Foundary
			{ name = "Stone Cracking", coords = vector4(1105.56, -1992.53, 30.94, 238.19), sprite = 566, col = 81, disp = 6,  blipTrue = false, prop = `prop_vertdrill_01` }, -- Foundary
		},
		['OreBuyer'] = { -- The Locations of the ore buyers
			{ name = "Ore Buyer", coords = vector4(1090.18, -1999.51, 30.93, 146.24), sprite = 568, col = 81, disp = 6, blipTrue = false, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
		},
		['JewelCut'] = { -- The Location of the jewel cutting bench. Couldn't decide so left in smeltery
			{ name = "Jewel Cutting", coords = vector4(1077.11, -1984.22, 31.02, 235.8), sprite = 566, col = 81, disp = 6, blipTrue = false, prop = `gr_prop_gr_speeddrill_01c` },
			{ name = "Jewel Cutting", coords = vector4(1075.19, -1985.45, 30.92, 144.89), sprite = 566, col = 81, disp = 6, blipTrue = false, prop = `gr_prop_gr_speeddrill_01c` },
		},
		['JewelBuyer'] = { -- The Location of the jewel buyer, I left this as Vangelico, others will proabably change to pawn shops
			{ name = "Mining - Sell", coords = vector4(-330.73, -2786.18, 5.15, 93.25), sprite = 618, col = 83, disp = 6, blipTrue = true, model = `S_M_M_HighSec_03`, scenario = "WORLD_HUMAN_CLIPBOARD", },
		},
	},

------------------------------------------------------------
--Ores and Props
	OrePositions = {
		-----MineShaft Locations
		vector4(-596.25, 2085.8, 131.42, 91.67),
		vector4(-592.46, 2081.39, 131.38, 307.16),
		vector4(-591.56, 2077.31, 131.38, 276.64),
		vector4(-594.57, 2078.59, 131.5, 110.59),
		vector4(-599.16, 2088.13, 131.97, 161.65),
		vector4(-608.02, 2088.5, 130.58, 141.18),
		vector4(-593.84, 2096.92, 131.4, 220.58),
		vector4(-588.49, 2048.05, 129.95+1.03, 0.0),
		vector4(-580.10, 2037.82, 128.8+1.03, 180.0),
		vector4(-572.28, 2022.37, 127.93+1.03, 90.0),
		vector4(-562.8, 2011.85, 127.25+1.03, 90.0),
		vector4(-548.99, 1996.56, 127.08+1.03, 210.95),
		----Deeper Mineshaft locations
		vector4(-534.22, 1982.9, 126.98+1.03, 210.95),
		vector4(-531.43, 1979.08, 127.15+1.03, 90.95),
		vector4(-523.71, 1981.21, 126.75+1.03, 250.95),
		vector4(-516.25, 1977.32, 126.49+1.03, 250.95),
		vector4(-506.58, 1980.66, 126.14+1.03, 210.95),
		vector4(-499.52, 1981.87, 125.08+1.03, 210.95),
		vector4(-488.44, 1982.74, 124.64+1.03, 250.95),
		vector4(-469.78, 1993.57, 123.26+1.03, 250.95),
		vector4(-458.53, 2003.33, 123.33+1.03, 250.95),
		--Quarry Locations
		vector4(3000.77, 2754.15, 43.5+1.03, 0.0),
		vector4(2990.38, 2750.4, 43.46+1.03, 0.0),
		vector4(2985.77, 2751.19, 43.06+1.03, 0.0),
		vector4(2980.37, 2748.4, 43.0+1.03, 0.0),
		vector4(2977.74, 2741.16, 44.54+1.03, 180.0),
		vector4(3004.49, 2761.98, 43.54+1.03, 180.0),
		vector4(3006.38, 2768.63, 42.59+1.03, 180.0),
		vector4(3005.44, 2773.78, 43.11+1.03, 180.0),
		vector4(3004.99, 2782.79, 44.57, 283.14),
		vector4(3000.69, 2792.6, 44.82, 315.64),
		vector4(2993.09, 2804.03, 43.81, 318.0),
		vector4(2986.94, 2815.67, 45.57, 298.64),
		vector4(2994.89, 2801.73, 43.62, 24.78),
		vector4(2979.16, 2828.96, 46.66, 285.0),
		vector4(2960.48, 2850.83, 47.59, 329.91),
		vector4(2948.71, 2852.32, 48.87, 24.38),
		vector4(2946.53, 2819.89, 42.8, 182.82),
		vector4(2936.7, 2812.76, 43.07, 107.3),
		vector4(2919.2, 2799.5, 41.19, 228.45),
		vector4(2927.42, 2787.5, 39.83, 222.42),
		vector4(2938.74, 2772.68, 39.26, 194.57),
		vector4(2949.98, 2766.96, 39.12, 196.35),
		vector4(2954.99, 2771.52, 39.02, 261.43),
		vector4(2969.61, 2772.6, 38.4, 316.37),
		vector4(2980.58, 2767.14, 41.09, 172.44),

	},

-----------------------------------------------------------

	CrackPool = {
		"carbon",
		"copperore",
		"ironore",
		"metalscrap",
	},

	WashPool = {
		"goldore",
		"uncut_ruby",
		"uncut_emerald",
		"uncut_diamond",
		"uncut_sapphire",
		"goldore",
	},

	PanPool = {
		"can",
		"goldore",
		"can",
		"goldore",
		"bottle",
		"stone",
		"goldore",
		"bottle",
		"can",
		"silverore",
		"can",
		"silverore",
		"bottle",
		"stone",
		"silverore",
		"bottle",
	},

------------------------------------------------------------
	SellItems = { -- Selling Prices
		['carbon'] = 20,
		['copperore'] = 40,
		['silverore'] = 60,
		['ironore'] = 80,
		['goldore'] = 100,

		['silveringot'] = 300,
		['goldingot'] = 400,

		['silverearring'] = 100,
		['silver_ring'] = 200,
		['silverchain'] = 300,

		['goldearring'] = 200,
		['gold_ring'] = 400,
		['goldchain'] = 600,

		['uncut_ruby'] = 50,
		['uncut_emerald'] = 100,
		['uncut_sapphire'] = 150,
		['uncut_diamond'] = 200,

		['ruby'] = 500,
		['emerald'] = 1000,
		['sapphire'] = 1500,
		['diamond'] = 2000,

		['ruby_ring_silver'] = 1100, --200 profit 
		['emerald_ring_silver'] = 1800, --400 profit 
		['sapphire_ring_silver'] = 2400, --600 profit 
		['diamond_ring_silver'] = 3200, --800 profit 

		['ruby_ring'] = 1500, --200 profit
		['emerald_ring'] = 2200, --400 profit
		['sapphire_ring'] = 2800, --600 profit
		['diamond_ring'] = 3600, --800 profit 

		['ruby_necklace_silver'] = 1300, --200 profit 
		['emerald_necklace_silver'] = 2000, --400 profit 
		['sapphire_necklace_silver'] = 2700, --600 profit 
		['diamond_necklace_silver'] = 3400, --800 profit 

		['ruby_necklace'] = 1900, --200 profit 
		['emerald_necklace'] = 2400, --400 profit 
		['sapphire_necklace'] = 3300, --600 profit
		['diamond_necklace'] = 4000, --800 profit 

		['ruby_earring'] = 1300,  --200 profit 
		['emerald_earring'] = 1800, --400 profit
		['sapphire_earring'] = 2500, -- 600 profit
		['diamond_earring'] = 3200, -- 800profit

		['ruby_earring_silver'] = 900, --200 profit 
		['emerald_earring_silver'] = 1600, --400 profit 
		['sapphire_earring_silver'] = 2300, --600 profit 
		['diamond_earring_silver'] = 3000, --800 profit 

	},

------------------------------------------------------------
--Added mine lighting for my first world NVE problems
--Light Up at Night..or sometimes not at all :(
	MineLights = {
		vector4(-595.52, 2086.38, 132.90+1.03, 0.0),
		vector4(-594.30, 2082.89, 132.95+1.03, 0.0),
		vector4(-591.85, 2073.95, 132.95+1.03, 0.0),
		vector4(-589.98, 2066.16, 132.52+1.03, 0.0),
		vector4(-588.92, 2059.21, 132.17+1.03, 0.0),
		vector4(-588.69, 2054.36, 131.83+1.03, 0.0),
		vector4(-587.11, 2048.25, 131.20+1.03, 0.0),
		vector4(-584.51, 2041.63, 130.76+1.03, 0.0),
		vector4(-580.87, 2035.56, 130.22+1.03, 0.0),
		vector4(-576.07, 2028.91, 129.66+1.03, 0.0),
		vector4(-571.74, 2023.9, 129.31+1.03, 0.0),
		vector4(-565.44, 2017.63, 128.97+1.03, 0.0),
		vector4(-561.39, 2012.64, 128.78+1.03, 0.0),
		vector4(-558.24, 2008.18, 128.66+1.03, 0.0),
		vector4(-553.94, 2001.05, 128.66+1.03, 0.0),
		vector4(-549.67, 1994.23, 128.66+1.03, 0.0),
		vector4(-545.35, 1986.81, 128.63+1.03, 0.0),
		vector4(-543.0, 1982.82, 128.63+1.03, 0.0),
		vector4(-534.72, 1981.34, 128.72+1.03, 0.0),
		vector4(-526.63, 1979.63, 128.64+1.03, 0.0),
		vector4(-515.62, 1979.07, 128.01+1.03, 0.0),
		vector4(-506.55, 1979.26, 127.44+1.03, 0.0),
		vector4(-499.81, 1980.19, 126.88+1.03, 0.0),
		vector4(-490.67, 1983.73, 126.01+1.03, 0.0),
		vector4(-479.18, 1987.91, 125.48+1.03, 0.0),
		vector4(-468.53, 1992.32, 125.1+1.03, 0.0),
		vector4(-462.7, 1996.76, 125.05+1.03, 0.0),
		vector4(-456.57, 2002.97, 125.02+1.03, 0.0),
		vector4(-450.79, 2009.94, 125.55+1.03, 0.0),
		vector4(-445.25, 2014.22, 125.57+1.03, 0.0),
	},
	WorkLights = {
		vector4(-593.9, 2076.57, 131.27, 233.24),
		vector4(-594.11, 2078.02, 131.3, 318.99),
		vector4(-592.11, 2069.46, 131.13, 224.91),
		vector4(-590.57, 2062.08, 130.8, 214.27),
		vector4(-589.57, 2054.82, 130.27, 217.82),
		vector4(-588.04, 2047.13, 129.65, 230.42),
		vector4(-584.95, 2039.96, 129.06, 225.12),
		vector4(-580.74, 2033.34, 128.47, 237.95),
		vector4(-576.23, 2027.24, 127.98, 242.31),
		vector4(-570.87, 2021.57, 127.5, 244.01),
		vector4(-565.69, 2015.97, 127.33, 251.45),
		vector4(-561.05, 2010.26, 127.1, 248.45),
		vector4(-557.0, 2003.95, 127.05, 242.28),
		vector4(-553.02, 1997.25, 126.99, 237.0),
		vector4(-549.29, 1990.84, 126.94, 224.48),
		vector4(-537.3, 1980.52, 126.9, 278.19),
		vector4(-529.79, 1979.09, 126.86, 295.72),
		vector4(-522.13, 1978.13, 126.59, 282.3),
		vector4(-514.44, 1977.77, 126.29, 297.0),
		vector4(-506.72, 1978.01, 126.02, 296.09),
		vector4(-498.89, 1979.11, 125.65, 316.07),
		vector4(-491.77, 1981.93, 124.82, 320.17),
		vector4(-484.83, 1984.85, 124.17, 328.43),
		vector4(-477.71, 1987.12, 123.83, 290.95),
		vector4(-470.33, 1990.0, 123.57, 307.32),
		vector4(-463.85, 1994.29, 123.46, 327.1),
		vector4(-458.09, 1999.59, 123.47, 338.54),
		vector4(-445.97, 2011.57, 123.4, 308.83),
	},

------------------------------------------------------------
--Mining Store Items
	Items = {
		label = "Mining Store",  slots = 9,
		items = {
			{ name = "water_bottle", price = 0, amount = 100, info = {}, type = "item", slot = 1, },
			{ name = "sandwich", price = 0, amount = 250, info = {}, type = "item", slot = 2, },
			{ name = "bandage", price = 0, amount = 100, info = {}, type = "item", slot = 3, },
			{ name = "weapon_flashlight", price = 0, amount = 100, info = {}, type = "item", slot = 4, },
			{ name = "goldpan", price = 100, amount = 100, info = {}, type = "item", slot = 5, },
			{ name = "pickaxe",	price = 100, amount = 100, info = {}, type = "item", slot = 6, },
			{ name = "miningdrill",	price = 10000, amount = 50, info = {}, type = "item", slot = 7, },
			{ name = "mininglaser",	price = 60000, amount = 5, info = {}, type = "item", slot = 8, },
			{ name = "drillbit", price = 100, amount = 100, info = {}, type = "item", slot = 9, },
		},
	},
}
Crafting = {
	SmeltMenu = {

		{ ["plastic"] = { ["dirtywater"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["plastic"] = { ["screwdriverset"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["plastic"] = { ["weaponlicense"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },

		{ ["rubber"] = { ["bong"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["rubber"] = { ["id_card"] = 2, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["rubber"] = { ["recyclablematerial"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },
		{ ["rubber"] = { ["actiontoy"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },

		{ ["glass"] = { ["bottle"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["glass"] = { ["sunglasses"] = 2, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["glass"] = { ["phone"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },

		{ ["aluminum"] = { ["can"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["aluminum"] = { ["noparkingsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },

		{ ["metalscrap"] = { ["walkingmansign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },
		{ ["metalscrap"] = { ["leftturnsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },
		{ ["metalscrap"] = { ["bottlecaps"] = 4, ["carbon"] = 4 }, ['amount'] = 1 },

		{ ["copper"] = { ["copperore"] = 6 }, ['amount'] = 1 },
		{ ["copper"] = { ["dontblockintersectionsign"] = 4, ["carbon"] = 2 }, ['amount'] = 1 },
		{ ["copper"] = { ["notrespassingsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },

		{ ["iron"] = { ["ironore"] = 6 }, ['amount'] = 1 },
		{ ["iron"] = { ["uturnsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },
		{ ["iron"] = { ["yieldsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },

		{ ["silveringot"] = { ["silverchain"] = 2 }, ['amount'] = 1 },
		{ ["silveringot"] = { ["silver_ring"] = 4 }, ['amount'] = 1 },
		{ ["silveringot"] = { ["silverore"] = 6 }, ['amount'] = 1 },

		{ ["goldingot"] = { ["goldchain"] = 2 }, ['amount'] = 1 },
		{ ["goldingot"] = { ["gold_ring"] = 4 }, ['amount'] = 1 },
		{ ["goldingot"] = { ["goldore"] = 6 }, ['amount'] = 1 },

		{ ["steel"] = { ["ironore"] = 4, ["carbon"] = 2 }, ['amount'] = 1},
		{ ["steel"] = { ["rightturnsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },
		{ ["steel"] = { ["stopsign"] = 2, ["carbon"] = 4 }, ['amount'] = 1 },

		{ ["metalscrap"] = { ["weapon_glock17"] = 1, ["carbon"] = 2 }, ['amount'] = 6},
		{ ["metalscrap"] = { ["weapon_appistol"] = 1, ["carbon"] = 2 }, ['amount'] = 6},

		{ ["metalscrap"] = { ["weapon_microsmg"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["metalscrap"] = { ["weapon_smg_mk2"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["metalscrap"] = { ["weapon_assaultsmg"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["metalscrap"] = { ["weapon_combatpdw"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["metalscrap"] = { ["weapon_minismg"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["metalscrap"] = { ["weapon_mac10"] = 1, ["carbon"] = 2 }, ['amount'] = 10},

		{ ["steel"] = { ["weapon_pumpshotgun_mk2"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["steel"] = { ["weapon_sawnoffshotgun"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["steel"] = { ["weapon_assaultshotgun"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["steel"] = { ["weapon_bullpupshotgun"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["steel"] = { ["weapon_heavyshotgun"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["steel"] = { ["weapon_dbshotgun"] = 1, ["carbon"] = 2 }, ['amount'] = 10},
		{ ["steel"] = { ["weapon_mossberg"] = 1, ["carbon"] = 2 }, ['amount'] = 10},

		{ ["steel"] = { ["weapon_assaultrifle_mk2"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_carbinerifle_mk2"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_specialcarbine_mk2"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_bullpuprifle_mk2"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_ak47"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_m4"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_ar15"] = 1, ["carbon"] = 2 }, ['amount'] = 20},
		{ ["steel"] = { ["weapon_scarh"] = 1, ["carbon"] = 2 }, ['amount'] = 20},

	},


	GemCut = {
		{ ["ruby"] = { ["uncut_ruby"] = 1 }, ['amount'] = 1  },
		{ ["emerald"] = { ["uncut_emerald"] = 1, }, ['amount'] = 1  },
		{ ["sapphire"] = { ["uncut_sapphire"] = 1 }, ['amount'] = 1  },
		{ ["diamond"] = { ["uncut_diamond"] = 1}, ['amount'] = 1 },

	},


	NeckCut = {

		{ ["silverchain"] = { ["silveringot"] = 1 }, ['amount'] = 2  },
		{ ["goldchain"] = { ["goldingot"] = 1 }, ['amount'] = 2  },

		{ ["ruby_necklace"] = { ["goldchain"] = 1, ["ruby"] = 1 }, ['amount'] = 1 },
		{ ["emerald_necklace"] = { ["goldchain"] = 1, ["emerald"] = 1 }, ['amount'] = 1 },
		{ ["sapphire_necklace"] = { ["goldchain"] = 1, ["sapphire"] = 1 }, ['amount'] = 1 },
		{ ["diamond_necklace"] = { ["goldchain"] = 1, ["diamond"] = 1 }, ['amount'] = 1 },

		{ ["ruby_necklace_silver"] = { ["silverchain"] = 1, ["ruby"] = 1 }, ['amount'] = 1 },
		{ ["emerald_necklace_silver"] = { ["silverchain"] = 1, ["emerald"] = 1 }, ['amount'] = 1 },
		{ ["sapphire_necklace_silver"] = { ["silverchain"] = 1, ["sapphire"] = 1 }, ['amount'] = 1 },
		{ ["diamond_necklace_silver"] = { ["silverchain"] = 1, ["diamond"] = 1 }, ['amount'] = 1 },

	},


	RingCut = {

		{ ["silver_ring"] = { ["silveringot"] = 1 }, ['amount'] = 4 },
		{ ["gold_ring"] = { ["goldingot"] = 1 }, ['amount'] = 4 },

		{ ["ruby_ring"] = { ["gold_ring"] = 2, ["ruby"] = 1 }, ['amount'] = 1 },
		{ ["emerald_ring"] = { ["gold_ring"] = 2, ["emerald"] = 1 }, ['amount'] = 1 },
		{ ["sapphire_ring"] = { ["gold_ring"] = 2, ["sapphire"] = 1 }, ['amount'] = 1 },
		{ ["diamond_ring"] = { ["gold_ring"] = 2, ["diamond"] = 1 }, ['amount'] = 1 },

		{ ["ruby_ring_silver"] = { ["silver_ring"] = 2, ["ruby"] = 1 }, ['amount'] = 1 },
		{ ["emerald_ring_silver"] = { ["silver_ring"] = 2, ["emerald"] = 1 }, ['amount'] = 1 },
		{ ["sapphire_ring_silver"] = { ["silver_ring"] = 2, ["sapphire"] = 1 }, ['amount'] = 1 },
		{ ["diamond_ring_silver"] = { ["silver_ring"] = 2, ["diamond"] = 1 }, ['amount'] = 1 },

	},


	EarCut = {

		{ ["silverearring"] = { ["silveringot"] = 1 }, ['amount'] = 6  },
		{ ["goldearring"] = { ["goldingot"] = 1 }, ['amount'] = 6  },

		{ ["ruby_earring"] = { ["goldearring"] = 2, ["ruby"] = 1 }, ['amount'] = 1  },
		{ ["emerald_earring"] = { ["goldearring"] = 2, ["emerald"] = 1 }, ['amount'] = 1 },
		{ ["sapphire_earring"] = { ["goldearring"] = 2, ["sapphire"] = 1 }, ['amount'] = 1 },
		{ ["diamond_earring"] = { ["goldearring"] = 2, ["diamond"] = 1 }, ['amount'] = 1 },
	
		{ ["ruby_earring_silver"] = { ["silverearring"] = 2, ["ruby"] = 1 }, ['amount'] = 1 },
		{ ["emerald_earring_silver"] = { ["silverearring"] = 2, ["emerald"] = 1 }, ['amount'] = 1  },
		{ ["sapphire_earring_silver"] = { ["silverearring"] = 2, ["sapphire"] = 1 }, ['amount'] = 1 },
		{ ["diamond_earring_silver"] = { ["silverearring"] = 2, ["diamond"] = 1 }, ['amount'] = 1  },

	},

}

K4MB1 = {
	['MineStore'] = {
		{ name = "Cave Shop", coords = vector4(2908.8, 2643.6, 43.26, 328.32), sprite = 527, col = 81, blipTrue = true, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD",  },		-- The location where you enter the mine
	},
	['Smelter'] = {	 -- The location of the smelter
		{ name = "Smelter", coords = vector3(2921.81, 2653.42, 43.15), sprite = 436, col = 1, blipTrue = false, },
	},
	['Cracking'] = { -- The location of the smelter
		{ name = "Stone Cracking", coords = vector4(2914.9, 2650.78, 43.08, 231.77), sprite = 566, col = 81, blipTrue = false, prop = `prop_vertdrill_01` }, -- Foundary
		{ name = "Stone Cracking", coords = vector4(2914.61, 2649.06, 43.19, 272.74), sprite = 566, col = 81, blipTrue = false, prop = `prop_vertdrill_01` }, -- Foundary
		{ name = "Stone Cracking", coords = vector4(2408.25, 3161.96, 23.97, 245.58), sprite = 566, col = 81, blipTrue = false, prop = `prop_vertdrill_01` }, -- Foundary
	},
	['OreBuyer'] = { -- The Locations of the ore buyers
		{ name = "Ore Buyer", coords = vector4(2917.79, 2646.26, 43.17, 6.14), sprite = 568, col = 81, blipTrue = false, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
	},
	['JewelCut'] = { -- The Location of the jewel cutting bench. Couldn't decide so left in smeltery
		{ name = "Jewel Cutting", coords = vector4(2917.45, 2654.24, 43.03, 229.61), sprite = 566, col = 81, blipTrue = false, prop = `gr_prop_gr_speeddrill_01c` },
		{ name = "Jewel Cutting", coords = vector4(2919.89, 2656.36, 43.15, 199.99), sprite = 566, col = 81, blipTrue = false, prop = `gr_prop_gr_speeddrill_01c` },
	},
	["OrePositions"] = {
		vector4(2906.33, 2736.05, 44.85, 56.09),
		vector4(2906.98, 2732.64, 43.97+1.03, 228.42),
		vector4(2895.52, 2718.07, 44.55+1.03, 102.59),
		vector4(2909.66, 2707.41, 45.23, 118.57),
		vector4(2930.71, 2693.23, 45.59+1.03, 246.69),
		vector4(2908.31, 2696.03, 47.1+1.03, 58.8),
		vector4(2908.64, 2692.78, 47.07+1.03, 121.55),
		vector4(2903.67, 2676.71, 45.94, 306.38),
		vector4(2890.67, 2679.4, 44.65+1, 105.51),
		vector4(2892.87, 2701.2, 49.69+1, 283.39),
		vector4(2876.53, 2707.35, 49.2+1, 31.29),
		vector4(2866.6, 2677.91, 47.55+1, 238.85),
		vector4(2859.34, 2668.93, 46.27, 260.51),
		vector4(2858.56, 2663.24, 46.0, 256.02),
		vector4(2865.12, 2664.62, 48.21+1.03, 0.18),
		vector4(2868.6, 2669.71, 48.78, 5.38),
		vector4(2901.05, 2684.32, 47.24, 313.73),
		vector4(2878.87, 2686.39, 47.72+1.03, 0),

		vector4(2888.54, 2634.12, 42.84, 207.17),
		vector4(2879.55, 2650.4, 43.69+1, 30.79),
		vector4(2896.32, 2648.31, 40.75+1, 301.66),
		vector4(2808.16, 2650.5, 38.6+1, 44.41),
		vector4(2792.43, 2640.55, 39.25+1, 77.72),
		vector4(2793.12, 2632.56, 38.74+1, 128.98),
		vector4(2799.6, 2629.53, 40.69+1, 189.92),
		vector4(2812.47, 2633.02, 41.19+0.6, 168.98),

		vector4(2817.65, 2590.74, 32.84+0.5, 121.44),
		vector4(2835.04, 2600.4, 35.23+0.2, 215.07),
		vector4(2837.77, 2605.3, 35.67+0.6, 296.09),

		vector4(2819.55, 2606.31, 37.98+0.5, 59.71),
		vector4(2823.73, 2611.07, 38.6+0.5, 49.71),
		vector4(2827.98, 2611.26, 34.45+0.5, 40.74),
	}
}