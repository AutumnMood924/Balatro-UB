-- not much here yet
local data = {}

-- This one's used for random seal assignment
-- Chance checks this to avoid putting these seals on playing cards
data.joker_stamps = {
}

data.BUFFERS = {
	Jokers = {},
	Consumables = {},
	Seals = {},
	Stamps = {},
	Vouchers = {},
	Enhancements = {},
	Decks = {},
	Blinds = {},
	Shaders = {},
	Editions = {},
	Tags = {},
	Aspects = {},
	Zodiacs = {},
	Materials = {},
	Recipes = {},
	Partners = {},
}

data.buffer_register_funcs = {
	Jokers = function(v)
		if not (BUB.config.enabled_jokers[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = "j_"..BUB.mod_prefix.."_"..v.key
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					subtitle = v.subtitle,
					text = v.text,
					boxes = v.boxes
				}
				v.subtitle = nil
			end
			
			SMODS.Joker(v)
		end
	end,
	Consumables = function(v)
		if not (BUB.config.enabled_consumables[v.key] == false) and ((not v.load_check) or v.load_check()) then
			--if v.set == "Oddity" and AMM.api.oddity == nil then return end
			local a = "c_"..BUB.mod_prefix.."_"..v.key
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					subtitle = v.subtitle,
					text = v.text,
					boxes = v.boxes
				}
				v.subtitle = nil
			end
			
			SMODS.Consumable(v)
		end
	end,
	Seals = function(v)
		if not (BUB.config.enabled_seals[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = string.lower(v.name)..'_seal'
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					subtitle = v.subtitle,
					text = v.text,
					boxes = v.boxes
				}
				v.subtitle = nil
			end
			
			SMODS.Seal(v)
		end
	end,
	Stamps = function(v)
		if not (BUB.config.enabled_stamps[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = string.lower(v.name)..'_seal'
			
			if not v.loc_txt then
				v.loc_txt = {
					label = v.display_name or v.name,
					description = {
						name = v.display_name or v.name,
						text = v.text,
						boxes = v.boxes
					}
				}
			end
			
			v.full_name = v.full_name or v.display_name or v.name
			v.colour = v.colour or v.color
			if type(v.colour) == "string" then v.colour = HEX(v.colour) end
			
			SMODS.Stamp(v)
		end
	end,
	Vouchers = function(v)
		if not (BUB.config.enabled_vouchers[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = "v_"..BUB.mod_prefix.."_"..v.key
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					subtitle = v.subtitle,
					text = v.text,
					boxes = v.boxes
				}
				v.subtitle = nil
			end
			
			SMODS.Voucher(v)
		end
	end,
	Enhancements = function(v)
		if not (BUB.config.enabled_enhancements[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = "m_"..BUB.mod_prefix.."_"..v.key
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					subtitle = v.subtitle,
					text = v.text,
					boxes = v.boxes
				}
				v.subtitle = nil
			end
			
			SMODS.Enhancement(v)
		end
	end,
	Decks = function(v)
		if not (BUB.config.enabled_decks[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = "b_"..BUB.mod_prefix.."_"..v.key
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					text = v.text,
					boxes = v.boxes
				}
			end
			
			SMODS.Back(v)
		end
	end,
	Blinds = function(v)
		if not (BUB.config.enabled_blinds[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = "bl_"..BUB.mod_prefix.."_"..v.key
			
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					text = v.text,
					boxes = v.boxes
				}
			end
			
			SMODS.Blind(v)
		end
	end,
	Shaders = function(v)
		if (not v.load_check) or v.load_check() then
			SMODS.Shader(v)
		end
	end,
	Editions = function(v)
		if not (BUB.config.enabled_editions[v.key] == false) and ((not v.load_check) or v.load_check()) then
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					subtitle = v.subtitle,
					text = v.text,
					boxes = v.boxes
				}
				v.subtitle = nil
			end
			SMODS.Edition(v)
		end
	end,
	Tags = function(v)
		if not (BUB.config.enabled_tags[v.key] == false) and ((not v.load_check) or v.load_check()) then
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					text = v.text,
					boxes = v.boxes
				}
			end
			SMODS.Tag(v)
		end
	end,
	Aspects = function(v)
		if not (BUB.config.enabled_aspects[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local a = string.lower(v.name)..'_aspect'
			
			if not v.loc_txt then
				v.loc_txt = {
					label = v.display_name or v.name,
					description = {
						name = v.display_name or v.name,
						text = v.text,
						boxes = v.boxes
					}
				}
			end
			
			v.full_name = v.full_name or v.display_name or v.name
			v.colour = v.colour or v.color
			if type(v.colour) == "string" then v.colour = HEX(v.colour) end
			v.badge_colour = v.badge_colour or v.badge_color
			if type(v.badge_colour) == "string" then v.badge_colour = HEX(v.badge_colour) end
			v.badge_text_colour = v.badge_text_colour or v.badge_text_color
			if type(v.badge_text_colour) == "string" then v.badge_text_colour = HEX(v.badge_text_colour) end
			
			AMM.Aspect(v)
		end
	end,
	Zodiacs = function(v)
		if Ortalab and not (BUB.config.enabled_zodiacs[v.key] == false) and ((not v.load_check) or v.load_check()) then
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					text = v.text,
					boxes = v.boxes
				}
			end
			Ortalab.Zodiac(v)
		end
	end,
	Materials = function(v)
		if Yggdrasil and not (BUB.config.enabled_materials[v.key] == false) and ((not v.load_check) or v.load_check()) then
			if not v.loc_txt then
				v.loc_txt = {
					name = v.display_name or v.name,
					text = v.text,
					boxes = v.boxes
				}
			end
			Yggdrasil.Material(v)
		end
	end,
	Recipes = function(v)
		if Yggdrasil and not (BUB.config.enabled_recipes[v.key] == false) and ((not v.load_check) or v.load_check()) then
			local m = {}
			m.recipe = {}
			for i=1,#v.recipe do
				m.recipe[i] = v.recipe[i]
			end
			m.config = v.config
			m.card_key = v.card_key
			YggCraftingRecipes[#YggCraftingRecipes+1] = m
		end
	end,
	Partners = function(v)
		if Partner_API and not (BUB.config.enabled_partners[v.key] == false) and ((not v.load_check) or v.load_check()) then
			Partner_API.Partner(v)
		end
	end,
}

local BUB_JoyousSpring = (next(SMODS.find_mod("JoyousSpring")) and AMM.mod.config.joyousspringify) and {
		["warrior"] = { attribute = "LIGHT", monster_type = "Warrior" },
		["thief"] = { attribute = "DARK", monster_type = "Warrior" },
		["monk"] = { attribute = "EARTH", monster_type = "Warrior" },
		["red_mage"] = { attribute = "EARTH", monster_type = "Spellcaster" },
		["black_mage"] = { attribute = "DARK", monster_type = "Spellcaster" },
		["white_mage"] = { attribute = "LIGHT", monster_type = "Spellcaster" },
		["weapon_shop"] = { attribute = "DARK", monster_type = "Warrior", is_tuner = true },
		["armor_shop"] = { attribute = "EARTH", monster_type = "Warrior", is_tuner = true },
		["item_shop"] = { attribute = "LIGHT", monster_type = "Warrior", is_tuner = true },
		["oasis_merchant"] = { attribute = "EARTH", monster_type = "Warrior", is_tuner = true },
		["knight"] = { attribute = "LIGHT", monster_type = "Warrior" },
		["ninja"] = { attribute = "DARK", monster_type = "Warrior" },
		["master"] = { attribute = "EARTH", monster_type = "Warrior" },
		["red_wizard"] = { attribute = "EARTH", monster_type = "Spellcaster" },
		["black_wizard"] = { attribute = "DARK", monster_type = "Spellcaster" },
		["white_wizard"] = { attribute = "LIGHT", monster_type = "Spellcaster" },
		["white_magic_shop"] = { attribute = "LIGHT", monster_type = "Spellcaster", is_tuner = true },
		["black_magic_shop"] = { attribute = "DARK", monster_type = "Spellcaster", is_tuner = true },
		["innkeeper"] = { attribute = "LIGHT", monster_type = "Warrior", is_tuner = true },
		["clergyman"] = { attribute = "LIGHT", monster_type = "Spellcaster", is_tuner = true },
		["crazy_horse"] = { attribute = "DARK", monster_type = "Beast" },
		["pirate"] = { attribute = "WATER", monster_type = "Warrior" },
		["green_ogre"] = { attribute = "EARTH", monster_type = "BeastWarrior" },
		["piscodemon"] = { attribute = "DARK", monster_type = "Fiend" },
		["astos"] = { attribute = "DARK", monster_type = "Fairy" },
		["hill_gigas"] = { attribute = "EARTH", monster_type = "Warrior" },
		["fire_hydra"] = { attribute = "FIRE", monster_type = "Reptile" },
		["desert_baretta"] = { attribute = "EARTH", monster_type = "Reptile" },
		["white_shark"] = { attribute = "WATER", monster_type = "Fish" },
		["spirit_naga"] = { attribute = "WIND", monster_type = "Reptile" },
		["evil_eye"] = { attribute = "DARK", monster_type = "Fiend" },
		["zombie_dragon"] = { attribute = "DARK", monster_type = "Zombie" },
		["warmech"] = { attribute = "DARK", monster_type = "Machine" },
		["purple_worm"] = { attribute = "DARK", monster_type = "Insect" },
		["lich"] = { attribute = "EARTH", monster_type = "Fiend" },
		["marilith"] = { attribute = "FIRE", monster_type = "Fiend" },
		["kraken"] = { attribute = "WATER", monster_type = "Fiend" },
		["tiamat"] = { attribute = "WIND", monster_type = "Fiend" },
		["garland"] = { attribute = "DARK", monster_type = "Warrior", is_tuner = true },
		["chaos"] = { attribute = "DARK", monster_type = "Fiend" },
		
		["rudinn"] = { attribute = "DARK", monster_type = "Warrior" },
		["hathy"] = { attribute = "DARK", monster_type = "Spellcaster", is_tuner = true },
		["clover"] = { attribute = "DARK", monster_type = "Beast", is_tuner = true },
		["cround"] = { attribute = "DARK", monster_type = "Warrior", is_tuner = true },
		["kround"] = { attribute = "DARK", monster_type = "Warrior" },
		["rudinn_ranger"] = { attribute = "DARK", monster_type = "Warrior" },
		["head_hathy"] = { attribute = "DARK", monster_type = "Spellcaster", is_tuner = true },
		["lancer"] = { attribute = "DARK", monster_type = "Warrior" },
		["king"] = { attribute = "DARK", monster_type = "Warrior" },
		["jevil"] = { attribute = "DARK", monster_type = "Fiend" },
		["roaring_knight"] = { attribute = "DARK", monster_type = "Warrior" },
		["jackenstein"] = { attribute = "DARK", monster_type = "Warrior" },
		
		["sunny"] = { attribute = "DARK", monster_type = "Warrior" },
	} or nil


function data.buffer_insert(buffer, object, extra)
	if extra then
		for k, v in pairs(extra) do
			if not object[k] then
				object[k] = v
			end
		end
	end
	if BUB_JoyousSpring and BUB_JoyousSpring[object.key] then
		local this_trait = BUB_JoyousSpring[object.key]
		if not object.config then
			object.config = {}
		end
		if type(object.config.extra) == "nil" then
			object.config.extra = {}
		end
		if type(object.config.extra) == "table" and not object.config.extra.joyous_spring then
			object.generate_ui = JoyousSpring.generate_info_ui
			object.config.extra.joyous_spring = JoyousSpring.init_joy_table {
				attribute = this_trait.attribute,
				monster_type = this_trait.monster_type,
				is_tuner = this_trait.is_tuner,
				is_normal = this_trait.is_normal,
			}
		end
	end
	table.insert(data.BUFFERS[buffer], object)
end

-- DO NOT CALL THIS FUNCTION ANY ADDITIONAL TIMES
function data.register_objects()
	for k, v in pairs(data.BUFFERS) do
		for _, obj in ipairs(v) do
			data.buffer_register_funcs[k](obj)
		end
	end
	data.BUFFERS = nil
end

return data