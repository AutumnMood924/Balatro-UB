local jokers = {
	"lord_of_d", lord_of_d = {
		pos = { x = 0, y = 0 },
		blueprint_compat = true,
		eternal_compat = true,
		rarity = 2,
		cost = 7,
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.retriggers, card.ability.extra.retriggers ~= 1 and "s" or "" } }
		end,
		generate_ui = JoyousSpring.generate_info_ui,
		set_sprites = JoyousSpring.set_back_sprite,
		config = {
			extra = {
				joyous_spring = JoyousSpring.init_joy_table {
					attribute = "DARK",
					monster_type = "Spellcaster",
				},
				retriggers = 1,
			},
		},
		calculate = function(self, card, context)
			if JoyousSpring.can_use_abilities(card) then
				if context.retrigger_joker_check and 
				JoyousSpring.is_monster_type(context.other_card, "Dragon") then
					return {
						repetitions = card.ability.extra.retriggers,
					}
				end
			end
		end,
	},
	"darkflare_dragon", darkflare_dragon = {
		pos = { x = 1, y = 0 },
		blueprint_compat = true,
		eternal_compat = true,
		rarity = 2,
		cost = 6,
		loc_vars = function(self, info_queue, card)
			if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
				info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
			end
			return { vars = { card.ability.extra.mult, card.ability.extra.tributes, card.ability.extra.tributes == 1 and "" or "s", card.ability.extra.mills, card.ability.extra.mills == 1 and "" or "s" } }
		end,
		generate_ui = JoyousSpring.generate_info_ui,
		set_sprites = JoyousSpring.set_back_sprite,
		config = {
			extra = {
				joyous_spring = JoyousSpring.init_joy_table {
					attribute = "DARK",
					monster_type = "Dragon",
				},
				mult = 24,
				tributes = 1,
				mills = 1,
			},
		},
		calculate = function(self, card, context)
			if JoyousSpring.can_use_abilities(card) then
				if context.joker_main then
					return {mult = card.ability.extra.mult}
				end
				if context.joy_activate_effect and context.joy_activated_card == card then
					local materials = {}
					for i=1,#G.jokers.cards do
						local this_card = G.jokers.cards[i]
						if this_card ~= card and JoyousSpring.is_monster_type(this_card, "Dragon") then
							materials[#materials+1] = this_card
						end
					end
					if #materials >= card.ability.extra.tributes then
						JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
							card.ability.extra.tributes)
					end
				end
				if context.joy_exit_effect_selection and context.joy_card == card and
					#context.joy_selection == card.ability.extra.tributes then
					JoyousSpring.tribute(card, context.joy_selection)
					
					local choices = JoyousSpring.get_materials_in_collection({ { monster_type = "Dragon", is_main_deck = true } })

					for i = 1, card.ability.extra.mills do
						JoyousSpring.send_to_graveyard(pseudorandom_element(choices, 'j_bub_darkflare_dragon'))
					end

					return {
						message = localize("k_joy_mill")
					}
				end
			end
		end,
		joy_can_activate = function(card)
			local materials = {}
			for i=1,#G.jokers.cards do
				local this_card = G.jokers.cards[i]
				if this_card ~= card and JoyousSpring.is_monster_type(this_card, "Dragon") then
					materials[#materials+1] = this_card
				end
			end
			return #materials >= card.ability.extra.tributes
		end,
	},
	"lightpulsar_dragon", lightpulsar_dragon = {
		pos = { x = 2, y = 0 },
		blueprint_compat = true,
		eternal_compat = true,
		rarity = 2,
		cost = 7,
		loc_vars = function(self, info_queue, card)
			if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
				info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
			end
			return { vars = { card.ability.extra.chips, card.ability.extra.revives, card.ability.extra.revives == 1 and "" or "s" } }
		end,
		generate_ui = JoyousSpring.generate_info_ui,
		set_sprites = JoyousSpring.set_back_sprite,
		config = {
			extra = {
				joyous_spring = JoyousSpring.init_joy_table {
					attribute = "LIGHT",
					monster_type = "Dragon",
				},
				chips = 150,
				revives = 1,
			},
		},
		calculate = function(self, card, context)
			if JoyousSpring.can_use_abilities(card) then
				if context.joker_main then
					return {chips = card.ability.extra.chips}
				end
				if (context.joy_sent_to_gy and context.joy_card and context.joy_card == card and context.joy_from_field) then
					local has_revived = false
					for i = 1, card.ability.extra.revives do
						local revived_card = JoyousSpring.revive_pseudorandom(
							{ { monster_attribute = "DARK", monster_type = "Dragon" } },
							'j_bub_lightpulsar_dragon',
							true
						)
						has_revived = (revived_card and true) or has_revived
					end
					if has_revived then
						return { message = localize("k_joy_revive") }
					end
				end
			end
		end,
	},
	"comrade_swordsman_of_landstar", comrade_swordsman_of_landstar = {
		pos = { x = 3, y = 0 },
		blueprint_compat = true,
		eternal_compat = true,
		rarity = 1,
		cost = 4,
		loc_vars = function(self, info_queue, card)
			if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
			end
			return { vars = { card.ability.extra.mult } }
		end,
		generate_ui = JoyousSpring.generate_info_ui,
		set_sprites = JoyousSpring.set_back_sprite,
		config = {
			extra = {
				joyous_spring = JoyousSpring.init_joy_table {
					attribute = "EARTH",
					monster_type = "Warrior",
					is_tuner = true,
				},
				mult = 4,
			},
		},
		calculate = function(self, card, context)
			if JoyousSpring.can_use_abilities(card) then
				if context.other_joker and JoyousSpring.is_monster_type(context.other_joker, "Warrior") then
					return {mult = card.ability.extra.mult}
				end
			end
		end,
	},
	"mysterious_puppeteer", mysterious_puppeteer = {
		pos = { x = 4, y = 0 },
		blueprint_compat = true,
		eternal_compat = true,
		rarity = 1,
		cost = 4,
		loc_vars = function(self, info_queue, card)
			if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
			end
			return { vars = { card.ability.extra.mult_mod, card.ability.extra.mult } }
		end,
		generate_ui = JoyousSpring.generate_info_ui,
		set_sprites = JoyousSpring.set_back_sprite,
		config = {
			extra = {
				joyous_spring = JoyousSpring.init_joy_table {
					attribute = "EARTH",
					monster_type = "Warrior",
				},
				mult = 4,
				mult_mod = 2,
			},
		},
		calculate = function(self, card, context)
			if JoyousSpring.can_use_abilities(card) then
				if context.amm_added_card and not context.blueprint and not context.from_debuff and JoyousSpring.is_main_deck_monster(context.other_card) then
					card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
					return {
						card = card,
						message = localize('k_upgrade_ex'),
						colour = G.C.MULT,
					}
				end
				if context.joker_main and card.ability.extra.mult > 0 then
					return {
						mult = card.ability.extra.mult
					}
				end
			end
		end,
	},
}

local oddities = {
	"shield_and_sword", shield_and_sword = {
		config = {
			extra = {
			}
		},
		pos = { x = 0, y = 0 },
		cost = 3,
		rarity = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {  }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				play_sound('tarot1')
				used_tarot:juice_up(0.3, 0.5)
				return true end }))
			for i=1, #G.hand.cards do
				local this_card = G.hand.cards[i]
				--
				local thunk = this_card.ability.perma_bonus
				this_card.ability.perma_bonus = this_card.ability.perma_mult
				this_card.ability.perma_mult = thunk
				--
				thunk = this_card.ability.perma_h_chips
				this_card.ability.perma_h_chips = this_card.ability.perma_h_mult
				this_card.ability.perma_h_mult = thunk
				--
				thunk = this_card.ability.perma_x_chips
				this_card.ability.perma_x_chips = this_card.ability.perma_x_mult
				this_card.ability.perma_x_mult = thunk
				--
				thunk = this_card.ability.perma_h_x_chips
				this_card.ability.perma_h_x_chips = this_card.ability.perma_h_x_mult
				this_card.ability.perma_h_x_mult = thunk
				--
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
					card_eval_status_text(this_card, 'extra', nil, nil, nil, {message = localize('k_swap_ex'), colour = G.C.PURPLE, instant = true})
				return true end}))
			end
		end,
		can_use = function(self, card)
			return G.hand and #G.hand.cards > 1
		end,
	},
	"miracle_dig", miracle_dig = {
		config = {
			extra = {
				mills = 3
			}
		},
		pos = { x = 1, y = 0 },
		cost = 5,
		rarity = 2,
		loc_vars = function(self, info_queue, card)
			return {vars = { card.ability.extra.mills, card.ability.extra.mills == 1 and "" or "s" }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
					
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
				local choices = JoyousSpring.get_materials_in_collection({ {} })

				for i = 1, card.ability.extra.mills do
					JoyousSpring.send_to_graveyard(pseudorandom_element(choices, 'c_bub_miracle_dig'))
				end
				
				card_eval_status_text(used_tarot, 'extra', nil, nil, nil, {message = localize('k_joy_mill')})
			return true end}))
		end,
		can_use = function(self, card)
			return true
		end,
	},
	"tremendous_fire", tremendous_fire = {
		config = {
			extra = {
				reduction = 0.20,
				cost = 1
			}
		},
		pos = { x = 2, y = 0 },
		cost = 3,
		rarity = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = { card.ability.extra.reduction * 100, card.ability.extra.cost, card.ability.extra.cost == 1 and "" or "s" }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			
			
				SMODS.calculate_effect( {
					extra = {focus = used_tarot,
						message = localize{type = 'variable', key = 'a_blind_minus_percent',
							vars = {card.ability.extra.reduction*100}}, },
					card = used_tarot,
                    func = function()
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        delay = 0.0,
                        func = (function()
                            AMM.mod_blind(1-card.ability.extra.reduction, nil, true)
                            return true
                        end)}))
					end,
				}, used_tarot)
			
			ease_hands_played(-card.ability.extra.cost)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				func = function()
					if G.GAME.current_round.hands_left < 1 then
						G.STATE = G.STATES.NEW_ROUND
						G.STATE_COMPLETE = false
					end
					return true
				end
			}))
		end,
		can_use = function(self, card)
			return G.GAME.blind.in_blind
		end,
	},
	"soul_of_the_pure", soul_of_the_pure = {
		config = {
			extra = {
				hand = 1
			}
		},
		pos = { x = 3, y = 0 },
		cost = 3,
		rarity = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = { card.ability.extra.hand, card.ability.extra.hand == 1 and "" or "s" }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			
			ease_hands_played(card.ability.extra.hand)
		end,
		can_use = function(self, card)
			return G.GAME.blind.in_blind
		end,
	},
	"graceful_charity", graceful_charity = {
		config = {
			extra = {
				draw = 3,
				discard = 2
			}
		},
		pos = { x = 4, y = 0 },
		cost = 3,
		rarity = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = { card.ability.extra.draw, card.ability.extra.draw == 1 and "" or "s", card.ability.extra.discard, card.ability.extra.discard == 1 and "" or "s" }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			TheAutumnCircus.func.force_draw_cards(card.ability.extra.draw, nil, true)
			G.E_MANAGER:add_event(Event({ func = function()
				local succcess = nil
				local available = {}
				for k, v in ipairs(G.hand.cards) do
					available[#available+1] = v
					G.hand:remove_from_highlighted(v)
				end
				for i = 1, card.ability.extra.discard do
					if G.hand.cards[i] then 
						local select_card, card_k = pseudorandom_element(available, pseudoseed('c_bub_graceful_charity'))
						G.hand:add_to_highlighted(select_card, true)
						table.remove(available, card_k)
						succcess = true
						play_sound('card1', 1)
					end
				end
				if succcess then G.FUNCS.discard_cards_from_highlighted(nil, true) end
			return true end })) 
		end,
		can_use = function(self, card)
			return G.GAME.blind.in_blind
		end,
	},
	"reinforcement_of_the_army", reinforcement_of_the_army = {
		config = {
			extra = {
				jokers = 1
			}
		},
		pos = { x = 5, y = 0 },
		cost = 4,
		rarity = 2,
		loc_vars = function(self, info_queue, card)
			return {vars = { card.ability.extra.jokers, card.ability.extra.jokers == 1 and "" or "s" }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
					
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
				--local choices = JoyousSpring.get_materials_in_collection({ {} })

				for i = 1, card.ability.extra.jokers do
					JoyousSpring.create_pseudorandom({ {rarity = 1, monster_type = "Warrior"} }, pseudoseed("c_bub_reinforcement_of_the_army"), true)
				end
				
				--card_eval_status_text(used_tarot, 'extra', nil, nil, nil, {message = localize('k_joy_mill')})
			return true end}))
		end,
		can_use = function(self, card)
			return #G.jokers.cards < G.jokers.config.card_limit
		end,
	},
	"hidden_armory", hidden_armory = {
		config = {
			extra = {
				mills = 1,
				oddities = 1
			}
		},
		pos = { x = 6, y = 0 },
		cost = 5,
		rarity = 2,
		loc_vars = function(self, info_queue, card)
			return {vars = { card.ability.extra.mills, card.ability.extra.mills == 1 and "" or "s", card.ability.extra.oddities, card.ability.extra.oddities == 1 and "y" or "ies" }}
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
					
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
				local choices = JoyousSpring.get_materials_in_collection({ {} })

				for i = 1, card.ability.extra.mills do
					JoyousSpring.send_to_graveyard(pseudorandom_element(choices, 'c_bub_hidden_armory'))
				end
				
				card_eval_status_text(used_tarot, 'extra', nil, nil, nil, {message = localize('k_joy_mill')})
			return true end}))
			
			delay(0.2)
			--create 1 oddity
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
				local _successes = 0
				local tries = math.min(card.ability.extra.oddities, G.consumeables.config.card_limit - (#G.consumeables.cards))
				for i = 1, tries do
					local this_card = SMODS.create_card{
						set = "Oddity",
						area = G.consumeables
					}
					this_card:add_to_deck()
					G.consumeables:emplace(this_card)
					--this_card:start_materialize()
					_successes = _successes + 1
				end
				
				if _successes > 0 then 
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
						card_eval_status_text(used_tarot, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_plus_oddity',vars={_successes}}})
					return true end}))
				end
			return true end}))
		end,
		can_use = function(self, card)
			return #G.consumeables.cards - (card.area == G.consumeables and 1 or 0) + G.GAME.consumeable_buffer < G.consumeables.config.card_limit
		end,
	},
}

SMODS.Atlas{
	key = "yugioh",
	path = "yugioh.png",
	px = 71,
	py = 95,
}
SMODS.Atlas{
	key = "yugioh_oddities",
	path = "yugioh_oddities.png",
	px = 71,
	py = 95,
}

--jokers
for _, k in ipairs(jokers) do
	local v = jokers[k]
	if not v.rarity then v.rarity = 1 end
	BUB.data.buffer_insert("Jokers", v, {key = k, atlas = "yugioh"})
end
--oddities
for _, k in ipairs(oddities) do
	local v = oddities[k]
	if not v.rarity then v.rarity = 1 end
	BUB.data.buffer_insert("Consumables", v, {set = "Oddity", key = k, atlas = "yugioh_oddities"})
end

if next(SMODS.find_mod("Pokermon")) then
	SMODS.Atlas{
		key = "yugioh_energy",
		path = "yugioh_energy.png",
		px = 71,
		py = 95,
	}
	
	-- Hook energy_matches (god why is this a global with that name)
	-- to check yugioh attributes if given an attribute
	-- they're in all caps.
	
	local alias__energy_matches = energy_matches
	energy_matches = function(card, etype, include_colorless)
		if etype == "DARK" or etype == "DIVINE" or etype == "EARTH" or etype == "FIRE" or etype == "LIGHT" or etype == "WATER" or etype == "WIND" then
			if JoyousSpring.is_attribute(card, etype) then return true end
		else
			return alias__energy_matches(card, etype, include_colorless)
		end
	end
	
	local nrg_use = function(self, card, area, copier)
		if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
			return energy_use(self, card, area, copier)
		else
			return highlighted_energy_use(self, card, area, copier)
		end
	end
	local nrg_can_use = function(self, card)
		if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
			return energy_can_use(self, card)
		else
			return highlighted_energy_can_use(self, card)
		end
	end
	
	local energy = {
		"dark_energy", dark_energy = {
			pos = { x = 0, y = 0 },
			cost = 4,
			etype = "DARK",
			loc_vars = function(self, info_queue, center)
				info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
				return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
			end,
			can_use = nrg_can_use,
			use = nrg_use
		},
		"earth_energy", earth_energy = {
			pos = { x = 1, y = 0 },
			cost = 4,
			etype = "EARTH",
			loc_vars = function(self, info_queue, center)
				info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
				return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
			end,
			can_use = nrg_can_use,
			use = nrg_use
		},
		"fire_energy", fire_energy = {
			pos = { x = 2, y = 0 },
			cost = 4,
			etype = "FIRE",
			loc_vars = function(self, info_queue, center)
				info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
				return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
			end,
			can_use = nrg_can_use,
			use = nrg_use
		},
		"light_energy", light_energy = {
			pos = { x = 3, y = 0 },
			cost = 4,
			etype = "LIGHT",
			loc_vars = function(self, info_queue, center)
				info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
				return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
			end,
			can_use = nrg_can_use,
			use = nrg_use
		},
		"water_energy", water_energy = {
			pos = { x = 4, y = 0 },
			cost = 4,
			etype = "WATER",
			loc_vars = function(self, info_queue, center)
				info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
				return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
			end,
			can_use = nrg_can_use,
			use = nrg_use
		},
		"wind_energy", wind_energy = {
			pos = { x = 5, y = 0 },
			cost = 4,
			etype = "WIND",
			loc_vars = function(self, info_queue, center)
				info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
				return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
			end,
			can_use = nrg_can_use,
			use = nrg_use
		},
	}
	--energy
	for _, k in ipairs(energy) do
		local v = energy[k]
		BUB.data.buffer_insert("Consumables", v, {set = "Energy", key = k, atlas = "yugioh_energy"})
	end
end