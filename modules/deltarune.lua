-- sprites adjusted by +45 Brightness / +10 Contrast

local jokers = {
	'unknown_world', unknown_world = {
        config = { extra = {
        }},
        pos = { x = 0, y = 0 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'rudinn', rudinn = {
        config = { extra = {
        }},
        pos = { x = 1, y = 0 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'hathy', hathy = {
        config = { extra = {
        }},
        pos = { x = 2, y = 0 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'clover', clover = {
        config = { extra = {
        }},
        pos = { x = 3, y = 0 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'cround', cround = {
        config = { extra = {
        }},
        pos = { x = 4, y = 0 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'kround', kround = {
        config = { extra = {
        }},
        pos = { x = 5, y = 0 },
        cost = 8,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'rudinn_ranger', rudinn_ranger = {
        config = { extra = {
        }},
        pos = { x = 6, y = 0 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'head_hathy', head_hathy = {
        config = { extra = {
        }},
        pos = { x = 7, y = 0 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'lancer', lancer = {
        config = { extra = {
			chips = 11,
			chip_mod = 5,
        }},
        pos = { x = 8, y = 0 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {vars = {card.ability.extra.chips, card.ability.extra.chip_mod}}
        end,
        calculate = function(self, card, context)
			if context.individual and not context.repetition and not context.end_of_round and context.cardarea == G.play and context.other_card:is_suit("Spades") then
				local extraret = nil
				if context.other_card.base.value == "Jack" and not SMODS.has_no_rank(context.other_card) then
					extraret = {
						focus = card,
						card = card,
						message = localize("k_upgrade_ex"),
						colour = G.C.CHIPS,
						sound = "bub_snd_splat",
						func = function()
							card.ability.extra.chips = card.ability.extra.chip_mod + card.ability.extra.chips
						end,
					}
				end
				return {
					focus = context.other_card,
					chip_mod = card.ability.extra.chips,
					message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
					sound = "bub_snd_splat",
					extra = extraret,
				}
			end
        end,
	},
	'king', king = {
        config = { extra = {
        }},
        pos = { x = 9, y = 0 },
        cost = 8,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'jevil', jevil = {
        config = { extra = {
			spades_key = "m_bonus",
			hearts_key = "m_glass",
			clubs_key = "m_mult",
			diamonds_key = "m_lucky",
        }},
        pos = { x = 0, y = 1 },
        cost = 20,
        rarity = 4,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			info_queue[#info_queue+1] = G.P_CENTERS[card.ability.extra.spades_key]
			info_queue[#info_queue+1] = G.P_CENTERS[card.ability.extra.hearts_key]
			info_queue[#info_queue+1] = G.P_CENTERS[card.ability.extra.clubs_key]
			info_queue[#info_queue+1] = G.P_CENTERS[card.ability.extra.diamonds_key]
			return { vars = {
				localize{ type = 'name_text', set = 'Enhanced', key = card.ability.extra.spades_key },
				localize{ type = 'name_text', set = 'Enhanced', key = card.ability.extra.hearts_key },
				localize{ type = 'name_text', set = 'Enhanced', key = card.ability.extra.clubs_key },
				localize{ type = 'name_text', set = 'Enhanced', key = card.ability.extra.diamonds_key },
			}}
        end,
        calculate = function(self, card, context)
            if context.check_enhancement and context.other_card.area == G.play and not (context.other_card.config.center.key == "m_stone" or context.other_card.config.center.no_suit) then
				local ret = {}
				local any_suit = (context.other_card.config.center.key == "m_wild" or context.other_card.config.center.any_suit) and true
                if context.other_card.base.suit == "Spades" or any_suit then
                    ret[card.ability.extra.spades_key] = true
                end
                if context.other_card.base.suit == "Hearts" or any_suit then
                    ret[card.ability.extra.hearts_key] = true
                end
                if context.other_card.base.suit == "Clubs" or any_suit then
                    ret[card.ability.extra.clubs_key] = true
                end
                if context.other_card.base.suit == "Diamonds" or any_suit then
                    ret[card.ability.extra.diamonds_key] = true
                end
				
				return ret
            end
			if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
				local _enhances = get_current_pool("Enhanced")
				pseudoshuffle(_enhances, pseudoseed("j_bub_jevil"))
				
				card.ability.extra.spades_key = _enhances[1]
				card.ability.extra.hearts_key = _enhances[2]
				card.ability.extra.clubs_key = _enhances[3]
				card.ability.extra.diamonds_key = _enhances[4]
				return {
					sound = "bub_snd_mercyadd",
					message = localize('k_reset'),
					colour = pseudorandom(pseudoseed("j_bub_jevil")) < 0.5 and G.C.PURPLE or G.C.BLUE,
				}
			end
        end,
	},
	'roaring_knight', roaring_knight = {
        config = { extra = {
        }},
        pos = { x = 9, y = 2 },
        cost = 20,
        rarity = 4,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'spr_kris_play_dead', spr_kris_play_dead = {
        config = { extra = {
			Xmult = 1.25
        }},
        pos = { x = 0, y = 3 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {vars = {card.ability.extra.Xmult}}
        end,
        calculate = function(self, card, context)
			if context.before then
				for i=1,#G.play.cards do
					local this_card = G.play.cards[i]
					if this_card:is_suit("Hearts") then
						this_card.debuff = true
					end
				end
			end
			if context.individual and context.cardarea == G.hand and context.other_card:is_suit("Hearts") then
				return {
					focus = card,
					card = context.other_card,
					Xmult = card.ability.extra.Xmult
				}
			end
        end,
	},
	'compassion', compassion = {
        config = { extra = {
			chips = 35,
        }},
        pos = { x = 1, y = 3 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {vars = {card.ability.extra.chips}}
        end,
        calculate = function(self, card, context)
			if context.other_joker then
				local myindex = 0
				for i=1,#G.jokers.cards do
					if G.jokers.cards[i] == card then
						myindex = i
						break;
					end
				end
				if (#G.jokers.cards > myindex and G.jokers.cards[myindex+1] == context.other_joker) or (myindex > 1 and G.jokers.cards[myindex-1] == context.other_joker) then
					return {
						chips = card.ability.extra.chips,
						card = context.other_joker,
						focus = card,
					}
				end
			end
        end,
	},
	'jackenstein', jackenstein = {
        config = { extra = {
        }},
        pos = { x = 4, y = 3 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
}

local materials = {
	"dr_essence", dr_essence = {
		craft_id = "dr_essence",
		pos = { x = 7, y = 1 },
		type = "material",
		rarity = "uncommon",
		max_obtain_cap = 4,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
	},
	"pipis", pipis = {
		craft_id = "dr_pipis",
		pos = { x = 3, y = 4 },
		type = "material",
		rarity = "uncommon",
		--unique = true,
		--min_stake = 999,
		max_obtain_cap = 4,
		max_ante = 2,
		min_ante = 2,
		blind_req = "Big",
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
	},
	"shadow_crystal", shadow_crystal = {
		craft_id = "dr_sc",
		pos = { x = 3, y = 1 },
		type = "material",
		rarity = "legendary",
		--unique = true,
		--min_stake = 999,
		max_obtain_cap = 1,
		min_ante = 1,
		min_stake = 4,
		blind_req = "Boss",
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
	},
	"woodblade", woodblade = {
		craft_id = "dr_pencil",
		pos = { x = 0, y = 2 },
		type = "relic",
		rarity = "common",
		unique = true,
		min_stake = 999,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
			if context.joker_main and context.equipped then
				return {
					chips = 15,
				}
			end
		end
	},
	"spookysword", spookysword = {
		craft_id = "dr_halloweenpencil",
		pos = { x = 1, y = 2 },
		type = "relic",
		rarity = "uncommon",
		unique = true,
		--min_stake = 999,
		max_ante = 4,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
			if context.joker_main and context.equipped then
				return {
					chips = 25,
				}
			end
		end
	},
	"maneax", maneax = {
		craft_id = "dr_hairbrush",
		pos = { x = 0, y = 3 },
		type = "relic",
		rarity = "common",
		unique = true,
		min_stake = 999,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
			if context.joker_main and context.equipped then
				return {
					mult = 2,
				}
			end
		end
	},
	"redscarf", redscarf = {
		craft_id = "dr_scarf",
		pos = { x = 0, y = 4 },
		type = "relic",
		rarity = "uncommon",
		unique = true,
		min_stake = 999,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
			if context.joker_main and context.equipped then
				for i=1, #G.hand.cards do
					G.hand.cards[i].ability.perma_bonus = G.hand.cards[i].ability.perma_bonus or 0
					G.hand.cards[i].ability.perma_bonus = G.hand.cards[i].ability.perma_bonus + 1
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
						card_eval_status_text(G.hand.cards[i], 'extra', nil, nil, nil, {message = localize('k_upgrade_ex'), colour = G.C.CHIPS, instant = true})
					return true end}))
				end
			end
		end
	},
	"pinkribbon", pinkribbon = {
		craft_id = "dr_pinkrbn",
		pos = { x = 6, y = 0 },
		type = "relic",
		rarity = "uncommon",
		unique = true,
		--min_stake = 999,
		min_ante = 2,
		max_ante = 3,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
		end,
		on_equip = function(self, card)
			G.E_MANAGER:add_event(Event({
				func = function()
					if G.hand then
						G.hand.config.real_card_limit = (G.hand.config.real_card_limit or G.hand.config.card_limit) + 1
						G.hand.config.card_limit = math.max(0, G.hand.config.real_card_limit)
					end
				return true end}))
		end,
		on_unequip = function(self, card)
			G.E_MANAGER:add_event(Event({
				func = function()
					if G.hand then
						G.hand.config.real_card_limit = (G.hand.config.real_card_limit or G.hand.config.card_limit) - 1
						G.hand.config.card_limit = math.max(0, G.hand.config.real_card_limit)
					end
				return true end}))
		end,--]]
	},
	"banana", banana = {
		craft_id = "dr_banana",
		pos = { x = 4, y = 1 },
		type = "relic",
		rarity = "rare",
		unique = true,
		min_stake = 999,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				(G.GAME["ygg_deltarunebanana_disabled"] and localize("ygg_inactive")) or localize("ygg_active"),
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
			if context.joker_main and context.equipped and not G.GAME["ygg_deltarunebanana_disabled"] then
				return{
					mult = 15,
				}
			end
			if context.end_of_round and context.equipped and not G.GAME["ygg_deltarunebanana_disabled"] and pseudorandom("ygg_deltarunebanana_roll") <= 1/20 then
				G.GAME["ygg_deltarunebanana_disabled"] = true
				return{
					message = localize("ygg_disabled")
				}
			end
		end
	},
	"rouxls", rouxls = {
		craft_id = "dr_rouxls",
		pos = { x = 8, y = 0 },
		type = "relic",
		rarity = "common",
		unique = true,
		min_stake = 999,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
			if context.joker_main and context.equipped then
				return {
					chips = -1,
				}
			end
		end
	},
	"important_persons_shirt", important_persons_shirt = {
		craft_id = "utdrshirt",
		pos = { x = 9, y = 1 },
		type = "relic",
		rarity = "exotic",
		unique = true,
		min_stake = 999,
		max_obtain_cap = 1,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				colours = {
					self.rarity ~= "common" and G.C["ygg_"..self.rarity] or G.C.GREY,
				},
			}}
		end,
		calculate = function(self, card, context)
		end
	},
}

local recipes = {
	"banana", banana = {
		card_key = "ygg_mat_bub_banana",
		recipe = {
			{"pota", "pota", "dr_essence"},
		},
		config = {
			amount = 1,
			unique = true,
			no_order = true,
		},
	},
	"rouxls", rouxls = {
		card_key = "ygg_mat_bub_rouxls",
		recipe = {
			{"cs", "cs", "cs"},
			{"cs", "dr_essence", "cs"},
			{"cs", "cs", "cs"},
		},
		config = {
			amount = 1,
			unique = true,
		},
	},
	"shirt", shirt = {
		card_key = "ygg_mat_bub_important_persons_shirt",
		recipe = {
			{"dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence", "dr_essence"},
		},
		config = {
			amount = 1,
			unique = true,
			no_order = true,
		},
	},
	"woodblade", woodblade = {
		card_key = "ygg_mat_bub_woodblade",
		recipe = {
			{"dr_essence"},
			{"dr_essence"},
			{"cs"},
		},
		config = {
			amount = 1,
			unique = true,
		},
	},
	"maneax_l", maneax_l = {
		card_key = "ygg_mat_bub_maneax",
		recipe = {
			{"dr_essence", "dr_essence"},
			{"dr_essence", "cs"},
			{"cs"},
		},
		config = {
			amount = 1,
			unique = true,
		},
	},
	"maneax_r", maneax_r = {
		card_key = "ygg_mat_bub_maneax",
		recipe = {
			{"dr_essence", "dr_essence"},
			{"cs", "dr_essence"},
			{"cs"},
		},
		config = {
			amount = 1,
			unique = true,
		},
	},
	"redscarf_l", redscarf_l = {
		card_key = "ygg_mat_bub_redscarf",
		recipe = {
			{"cs", "cs", "cs"},
			{"cs", "dr_essence", "cs"},
			{"cs", "dr_essence"},
		},
		config = {
			amount = 1,
			unique = true,
		},
	},
	"redscarf_r", redscarf_r = {
		card_key = "ygg_mat_bub_redscarf",
		recipe = {
			{"cs", "cs", "cs"},
			{"cs", "dr_essence", "cs"},
			{"dr_essence", "cs"},
		},
		config = {
			amount = 1,
			unique = true,
		},
	},
	
	"lancer", lancer = {
		card_key = "j_bub_lancer",
		recipe = {
			{"dr_essence", "bs"},
		},
		config = {
			no_order = true,
			amount = 1,
			immediate_emplace = true,
			specific_area = "jokers",
		},
	},
	"hathy", hathy = {
		card_key = "j_bub_hathy",
		recipe = {
			{"dr_essence", "sh"},
		},
		config = {
			no_order = true,
			amount = 1,
			immediate_emplace = true,
			specific_area = "jokers",
		},
	},
	"clover", clover = {
		card_key = "j_bub_clover",
		recipe = {
			{"dr_essence", "dc", "dc"},
		},
		config = {
			no_order = true,
			amount = 1,
			immediate_emplace = true,
			specific_area = "jokers",
		},
	},
	"rudinn", rudinn = {
		card_key = "j_bub_rudinn",
		recipe = {
			{"dr_essence", "fd"},
		},
		config = {
			no_order = true,
			amount = 1,
			immediate_emplace = true,
			specific_area = "jokers",
		},
	},
}

local partners = {
	"krisdog", krisdog = {
		unlocked = true,
		discovered = true,
		pos = { x = 0, y = 0 },
		config = {
			extra = {
				uses = 5,
				max_uses = 5,
				chip_mod = 10,
				targets = 3,
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
			info_queue[#info_queue+1] = { key = "petting", set = "Other" }
			return {
				vars = {
					card.ability.extra.targets,
					card.ability.extra.chip_mod,
					card.ability.extra.chip_mod ~= 1 and "s" or "",
					card.ability.extra.max_uses,
					card.ability.extra.uses,
					card.ability.extra.targets ~= 1 and "s" or ""
				}
			}
		end,
		calculate = function(self, card, context)
			if context.amm_pet_card and context.amm_pet_card == card then
				if not G.hand or #G.hand.cards < 1 or card.ability.extra.uses == 0 then
					return {
						message = localize('k_bub_wan'),
						sound = "bub_snd_pombark",
						colour = G.C.BLUE,
					}
				end
				
				if G.hand and #G.hand.cards > 0 then
					local temp_hand = {}
					for i=1,#G.hand.cards do
						temp_hand[#temp_hand+1] = G.hand.cards[i]
					end
					pseudoshuffle(temp_hand, pseudoseed("krisdog"))
					for i=1,math.min(#G.hand.cards,card.ability.extra.targets) do
						local this_card = temp_hand[i]
						this_card.ability.perma_bonus = this_card.ability.perma_bonus + card.ability.extra.chip_mod
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
							card_eval_status_text(this_card, 'extra', nil, percent, nil, {message = localize('k_upgrade_ex'), 
							sound = "bub_snd_mercyadd", colour = G.C.CHIPS, instant = true})
							percent = percent + 0.2
						return true end}))
					end
					card.ability.extra.uses = card.ability.extra.uses - 1
					return {
						message = localize('k_bub_wan'),
						sound = "bub_snd_pombark",
						colour = G.C.BLUE,
					}
				end
			end
			if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
				card.ability.extra.uses = card.ability.extra.max_uses
				return {
					sound = "bub_snd_pombark",
					message = localize('k_reset'),
					colour = G.C.BLUE,
				}
			end
		end,
	},
	"susiedog", susiedog = {
		unlocked = true,
		discovered = true,
		pos = { x = 1, y = 1 },
		config = {
			extra = {
				hand_cost = 1,
				mult_mod = 5,
				mult = 0,
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
			info_queue[#info_queue+1] = { key = "petting", set = "Other" }
			return {
				vars = {
					card.ability.extra.mult_mod,
					card.ability.extra.mult,
					card.ability.extra.hand_cost,
					card.ability.extra.hand_cost ~= 1 and "s" or ""
				}
			}
		end,
		calculate = function(self, card, context)
			if context.amm_pet_card and context.amm_pet_card == card then
				if not G.hand or #G.hand.cards < 1 or not G.GAME.blind then
					return {
						message = localize('k_nope_ex'),
						sound = "bub_snd_cantselect",
						colour = G.C.RED,
					}
				end
				
				if G.hand and #G.hand.cards > 0 and G.GAME.blind then
					
					card.ability.extra.mult = card.ability.extra.mult_mod + card.ability.extra.mult
					
					ease_hands_played(-1)
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
					return {
						message = localize('k_bub_dumbass'),
						sound = "bub_snd_chomp",
						colour = G.C.RED,
					}
				end
			end
			if context.joker_main and card.ability.extra.mult > 0 then
				return {
					sound = "bub_snd_pombark",
					mult_mod = card.ability.extra.mult,
					message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
					colour = G.C.RED,
				}
			end
			if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
				card.ability.extra.mult = 0
				return {
					sound = "bub_snd_pombark",
					message = localize('k_reset'),
					colour = G.C.RED,
				}
			end
		end,
	},
	"ralseidog", ralseidog = {
		unlocked = true,
		discovered = true,
		pos = { x = 2, y = 1 },
		config = {
			extra = {
				uses = 2,
				max_uses = 2,
				targets = 1,
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
			info_queue[#info_queue+1] = { key = "petting", set = "Other" }
			return {
				vars = {
					card.ability.extra.targets,
					card.ability.extra.max_uses,
					card.ability.extra.uses,
					card.ability.extra.targets ~= 1 and "s" or ""
				}
			}
		end,
		calculate = function(self, card, context)
			if context.amm_pet_card and context.amm_pet_card == card then
				if not G.hand or #G.hand.cards < 1 or card.ability.extra.uses == 0 then
					return {
						message = localize('k_bub_wan'),
						sound = "bub_snd_pombark",
						colour = G.C.GREEN,
					}
				end
				
				if G.hand and #G.hand.cards > 0 then
					local seal_list = {}
					for __, v in ipairs(G.P_CENTER_POOLS['Seal']) do
						table.insert(seal_list, v.key)
					end
					local temp_hand = {}
					for i=1,#G.hand.cards do
						if not G.hand.cards[i].seal then
							temp_hand[#temp_hand+1] = G.hand.cards[i]
						end
					end
					pseudoshuffle(temp_hand, pseudoseed("ralseidog"))
					for i=1,math.min(#temp_hand,card.ability.extra.targets) do
						local this_card = temp_hand[i]
						local seal_type = pseudorandom(pseudoseed('stdsealtype'..G.GAME.round_resets.ante))
						seal_type = math.floor(seal_type * #seal_list)
						if seal_type == 0 then seal_type = #seal_list end
						this_card:set_seal(seal_list[seal_type])
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
							card_eval_status_text(this_card, 'extra', nil, percent, nil, {message = localize('k_bub_add_seal'), 
							sound = "bub_snd_mercyadd", colour = G.C.GREEN, instant = true})
							percent = percent + 0.2
						return true end}))
					end
					card.ability.extra.uses = card.ability.extra.uses - 1
					return {
						message = localize('k_bub_wan'),
						sound = "bub_snd_pombark",
						colour = G.C.GREEN,
					}
				end
			end
			if context.end_of_round and not context.individual and not context.repetition then
				card.ability.extra.uses = card.ability.extra.max_uses
				return {
					sound = "bub_snd_pombark",
					message = localize('k_reset'),
					colour = G.C.GREEN,
				}
			end
		end,
	},
	"krissplat", krissplat = {
		unlocked = true,
		discovered = true,
		pos = { x = 1, y = 0 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"noelleganbatte", noelleganbatte = {
		unlocked = true,
		discovered = true,
		pos = { x = 0, y = 1 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardkris", boardkris = {
		unlocked = true,
		discovered = true,
		pos = { x = 5, y = 0 },
		config = {
			extra = {
				chips = 20,
				chip_mod_factor = 1.20,
				chip_mod_factor_factor = 1.05,
				lv = 1,
				to_next_lv = 2,
				to_next_lv_cap = 2,
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
			info_queue[#info_queue+1] = { key = "graveyard", set = "Other" }
			return {
				vars = {
					card.ability.extra.chips,
					card.ability.extra.chips ~= 1 and "s" or "",
					card.ability.extra.lv,
					math.floor(100*(card.ability.extra.to_next_lv_cap - card.ability.extra.to_next_lv)/card.ability.extra.to_next_lv_cap)
				}
			}
		end,
		calculate = function(self, card, context)
			if context.joker_main and card.ability.extra.chips > 0 then
				return {
					sound = pseudorandom_element({"bub_snd_board_sword1","bub_snd_board_sword2", "bub_snd_board_sword3"}, pseudoseed("boardswordsfx")),
					chip_mod = card.ability.extra.chips,
					message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
					colour = G.C.CHIPS,
				}
			end
			if context.amm_buried_card then
				card.ability.extra.to_next_lv = card.ability.extra.to_next_lv - 1
				if card.ability.extra.to_next_lv < 1 then
					card.ability.extra.lv = card.ability.extra.lv + 1
					card.ability.extra.to_next_lv = 1 + math.floor(card.ability.extra.lv/2)
					card.ability.extra.to_next_lv_cap = card.ability.extra.to_next_lv
					card.ability.extra.chips = math.ceil(card.ability.extra.chips * card.ability.extra.chip_mod_factor)
					card.ability.extra.chip_mod_factor = card.ability.extra.chip_mod_factor * card.ability.extra.chip_mod_factor_factor
					return {
						sound = "bub_snd_board_ominous",
						message = localize('k_bub_lv_up'),
						colour = G.C.RED,
					}
				end
			end
		end,
	},
	"boardsusie", boardsusie = {
		unlocked = true,
		discovered = true,
		pos = { x = 6, y = 0 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardralsei", boardralsei = {
		unlocked = true,
		discovered = true,
		pos = { x = 7, y = 0 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardlancer", boardlancer = {
		unlocked = true,
		discovered = true,
		pos = { x = 8, y = 0 },
		config = {
			extra = {
				chip_mod_mod = 3,
			}
		},
		link_config = {j_bub_lancer = 1},
		loc_vars = function(self, info_queue, card)
			local link_level = self:get_link_level()
			local key = self.key
			if link_level and link_level > 0 then
				key = key.."_"..link_level
			end
			info_queue[#info_queue+1] = G.P_CENTERS.j_bub_lancer
			return { key = key, vars = {card.ability.extra.chip_mod_mod} }
		end,
		calculate = function(self, card, context)
			if context.partner_click or (context.amm_pet_card and context.amm_pet_card == card) then
                return {
					sound = "bub_snd_splat",
					message = localize("k_bub_lancerquip"..math.ceil(pseudorandom(pseudoseed("lancerquip"), 1, 9))),
					colour = G.C.BLUE,
				}
			end
			if context.skip_blind then
				card:juice_up(0.2)
				local link_level = self:get_link_level()
				if link_level and link_level > 0 then
					-- buff all lancers
					for i=1,#G.jokers.cards do
						local this_card = G.jokers.cards[i]
						if this_card.config.center.key == "j_bub_lancer" then
							this_card.ability.extra.chips = this_card.ability.extra.chips + card.ability.extra.chip_mod_mod
							this_card.ability.extra.chip_mod = this_card.ability.extra.chip_mod + card.ability.extra.chip_mod_mod
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
								card_eval_status_text(this_card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex'), colour = G.C.CHIPS, instant = true})
								play_sound("bub_snd_splat", 0.9 + i*0.1)
							return true end}))
						end
					end
				else
					-- create a lancer (dont care about room)
					local lancer = SMODS.create_card{set = "Joker", area = G.jokers, key = "j_bub_lancer"} 
					lancer:add_to_deck()
					G.jokers:emplace(lancer)
					lancer:start_materialize()
				end
			end
		end,
	},
	"boardrouxls", boardrouxls = {
		unlocked = true,
		discovered = true,
		pos = { x = 9, y = 0 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardpippins", boardpippins = {
		unlocked = true,
		discovered = true,
		pos = { x = 5, y = 1 },
		config = {
			extra = {
				cap = 6,
				cap_plus = 4,
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.cap } }
		end,
		calculate = function(self, card, context)
			if context.mod_probability then
				return {
					denominator = math.min(context.denominator, card.ability.extra.cap)
				}
			end
		end,
	},
	"boardlanino", boardlanino = {
		unlocked = true,
		discovered = true,
		pos = { x = 6, y = 1 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardelnina", boardelnina = {
		unlocked = true,
		discovered = true,
		pos = { x = 7, y = 1 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardrudinn", boardrudinn = {
		unlocked = true,
		discovered = true,
		pos = { x = 8, y = 1 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"boardtenna", boardtenna = {
		unlocked = true,
		discovered = true,
		pos = { x = 9, y = 1 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		calculate = function(self, card, context)
		end,
	},
	"original__________________________starwalker", original__________________________starwalker = {
		unlocked = true,
		discovered = true,
		pos = { x = 4, y = 2 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
			local stars = {"c_star"}
			local try = {"c_six_star_q", "c_mf_rot_star", "c_thac_rotflip_star"}
			for i=1,#try do
				if G.P_CENTERS[try[i]] then
					stars[#stars+1] = try[i]
				end
			end
			for i=1,#stars do
				info_queue[#info_queue+1] = G.P_CENTERS[stars[i]]
			end
		end,
		calculate = function(self, card, context)
			if context.end_of_round and not context.individual and not context.repetition then
				if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					return {
						func = function()
							local stars = {"c_star"}
							local try = {"c_six_star_q", "c_mf_rot_star", "c_thac_rotflip_star"}
							for i=1,#try do
								if G.P_CENTERS[try[i]] then
									stars[#stars+1] = try[i]
								end
							end
							local card = SMODS.create_card{
								key = pseudorandom_element(stars, pseudoseed("original__________________________starwalker")),
								area = G.consumeables,
							}
							card:add_to_deck()
							G.consumeables:emplace(card)
							G.GAME.consumeable_buffer = 0
							return true
						end,
						message = localize("k_bub_star____________________walker"),
						colour = G.C.YELLOW,
					}
				else
					return {
						sound = "bub_snd_cantselect",
						message = localize('k_bub_no_room'),
						colour = G.C.RED,
					}
				end
			end
		end,
	},
	"IMAGE_FRIEND", IMAGE_FRIEND = {
		unlocked = true,
		discovered = true,
		pos = { x = 9, y = 2 },
		config = {
			extra = {
			}
		},
		link_config = {},
		loc_vars = function(self, info_queue, card)
		end,
		set_badges = function(self, card, badges)
			if card.config.center.discovered then
				badges[1].nodes[1].nodes[2].config.object:remove()
				badges[1] = create_badge("FRIEND", HEX("666666"), nil, 1.2)
				return badges
			end
		end,
		calculate = function(self, card, context)
			if context.partner_click or (context.amm_pet_card and context.amm_pet_card == card) then
                return {
					sound = "bub_snd_creepylaugh",
					message = " ",
					colour = pseudorandom(pseudoseed("IMAGE_FRIEND")) > 0.5 and HEX("FF00FF") or HEX("FFF200"),
				}
			end
		end,
	},
}

SMODS.Atlas{
	key = "deltarune",
	path = "deltarune.png",
	px = 71,
	py = 95,
}
SMODS.Atlas{
	key = "deltarune_materials",
	path = "deltarune_materials.png",
	px = 50,
	py = 50,
}
SMODS.Atlas{
	key = "deltarune_partners",
	path = "deltarune_partners.png",
	px = 46,
	py = 58,
}
SMODS.Sound{
	key = "snd_splat",
	path = "snd_splat.ogg",
}
SMODS.Sound{
	key = "snd_mercyadd",
	path = "snd_mercyadd.ogg",
}
SMODS.Sound{
	key = "snd_spare",
	path = "snd_spare.ogg",
}
SMODS.Sound{
	key = "snd_pombark",
	path = "snd_pombark.ogg",
}
SMODS.Sound{
	key = "snd_menumove",
	path = "snd_menumove.ogg",
}
SMODS.Sound{
	key = "snd_select",
	path = "snd_select.ogg",
}
SMODS.Sound{
	key = "snd_cantselect",
	path = "snd_cantselect.ogg",
}
SMODS.Sound{
	key = "snd_swing",
	path = "snd_swing.ogg",
}
SMODS.Sound{
	key = "snd_egg",
	path = "snd_egg.ogg",
}
SMODS.Sound{
	key = "snd_chomp",
	path = "snd_chomp.ogg",
}
SMODS.Sound{
	key = "snd_board_sword1",
	path = "snd_board_sword1.ogg",
}
SMODS.Sound{
	key = "snd_board_sword2",
	path = "snd_board_sword2.ogg",
}
SMODS.Sound{
	key = "snd_board_sword3",
	path = "snd_board_sword3.ogg",
}
SMODS.Sound{
	key = "snd_board_ominous",
	path = "snd_board_ominous.ogg",
}
SMODS.Sound{
	key = "snd_creepylaugh",
	path = "snd_creepylaugh.ogg",
}
--jokers
for _, k in ipairs(jokers) do
	local v = jokers[k]
	if not v.rarity then v.rarity = 1 end
	BUB.data.buffer_insert("Jokers", v, {key = k, atlas = "deltarune", hover_sound = "bub_snd_menumove", select_sound = "bub_snd_select", deselect_sound = "bub_snd_swing"})
end
--materials
for _, k in ipairs(materials) do
	local v = materials[k]
	if not v.rarity then v.rarity = "common" end
	BUB.data.buffer_insert("Materials", v, {key = k, loot_config = {
		id = k,
		craft_id = v.craft_id or k,
		mod_prefix = "bub",
		min_obtain_cap = (v.loot_config and v.loot_config.min_obtain_cap) or v.min_obtain_cap or nil,
		max_obtain_cap = (v.loot_config and v.loot_config.max_obtain_cap) or v.max_obtain_cap or nil,
		min_stake = (v.loot_config and v.loot_config.min_stake) or v.min_stake or nil,
		max_stake = (v.loot_config and v.loot_config.max_stake) or v.max_stake or nil,
		min_ante = (v.loot_config and v.loot_config.min_ante) or v.min_ante or nil,
		max_ante = (v.loot_config and v.loot_config.max_ante) or v.max_ante or nil,
		blind_req = (v.loot_config and v.loot_config.blind_req) or v.blind_req or nil,
		unique = (v.loot_config and v.loot_config.unique) or v.unique or nil,
		mod_id = "Balatro_UB",
	},	atlas = "deltarune_materials", hover_sound = "bub_snd_menumove", select_sound = "bub_snd_select", deselect_sound = "bub_snd_swing"})
end
--recipes
for _, k in ipairs(recipes) do
	local v = recipes[k]
	BUB.data.buffer_insert("Recipes", v, {})
end
--partners
for _, k in ipairs(partners) do
	local v = partners[k]
	BUB.data.buffer_insert("Partners", v, {no_quips = true, key = k, atlas = "deltarune_partners", hover_sound = "bub_snd_menumove", select_sound = "bub_snd_select", deselect_sound = "bub_snd_swing"})
end