-- sprite rips from:
-- Dixet, Mark300Hub, Polar Koala (FF1 Light Warriors)
-- MetallicK2MK (FF1 Enemies & Bosses)
-- Infernotails, Nathan_R (FF1 Font)
-- Cavery210 (FF1 Shops)
-- Xltd_FF (FF1 Battle Backgrounds)
-- ShadeDBZ (FF1 Magic)

local jokers = {
	'warrior', warrior = {
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
	'thief', thief = {
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
	'monk', monk = {
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
	'red_mage', red_mage = {
        config = { extra = {
        }},
        pos = { x = 3, y = 0 },
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
	'black_mage', black_mage = {
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
	'white_mage', white_mage = {
        config = { extra = {
        }},
        pos = { x = 5, y = 0 },
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
	'weapon_shop', weapon_shop = {
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
	'armor_shop', armor_shop = {
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
	'item_shop', item_shop = {
        config = { extra = {
        }},
        pos = { x = 8, y = 0 },
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
	'oasis_merchant', oasis_merchant = {
        config = { extra = {
        }},
        pos = { x = 9, y = 0 },
        cost = 9,
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
	'knight', knight = {
        config = { extra = {
        }},
        pos = { x = 0, y = 1 },
        cost = 10,
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
	'ninja', ninja = {
        config = { extra = {
        }},
        pos = { x = 1, y = 1 },
        cost = 10,
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
	'master', master = {
        config = { extra = {
        }},
        pos = { x = 2, y = 1 },
        cost = 10,
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
	'red_wizard', red_wizard = {
        config = { extra = {
        }},
        pos = { x = 3, y = 1 },
        cost = 10,
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
	'black_wizard', black_wizard = {
        config = { extra = {
        }},
        pos = { x = 4, y = 1 },
        cost = 10,
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
	'white_wizard', white_wizard = {
        config = { extra = {
        }},
        pos = { x = 5, y = 1 },
        cost = 10,
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
	'white_magic_shop', white_magic_shop = {
        config = { extra = {
        }},
        pos = { x = 6, y = 1 },
        cost = 7,
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
	'black_magic_shop', black_magic_shop = {
        config = { extra = {
        }},
        pos = { x = 7, y = 1 },
        cost = 7,
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
	'innkeeper', innkeeper = {
        config = { extra = {
        }},
        pos = { x = 8, y = 1 },
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
	'clergyman', clergyman = {
        config = { extra = {
        }},
        pos = { x = 9, y = 1 },
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
	'crazy_horse', crazy_horse = {
        config = { extra = {
			mult = 15,
			limit = 1
        }},
        pos = { x = 0, y = 2 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
            return {vars = {card.ability.extra.mult, card.ability.extra.limit}}
        end,
        calculate = function(self, card, context)
            if context.joker_main then
                return {
					mult = card.ability.extra.mult,
				}
            end
        end,
		add_to_deck = function(self, card, from_debuff)
			SMODS.change_discard_limit(-card.ability.extra.limit)
		end,
		remove_from_deck = function(self, card, from_debuff)
			SMODS.change_discard_limit(card.ability.extra.limit)
		end,
	},
	'pirate', pirate = {
        config = { extra = {
            chips = 6,
			money = 1,
        }},
        pos = { x = 1, y = 2 },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
            return {vars = {card.ability.extra.chips, card.ability.extra.money}}
        end,
        calculate = function(self, card, context)
            if context.individual and not context.repetition and context.cardarea == G.play and not context.end_of_round and context.other_card:get_id() == 9 and not SMODS.has_no_rank(context.other_card) then
                return {
					chips = card.ability.extra.chips,
					dollars = card.ability.extra.money
				}
            end
        end,
	},
    'green_ogre', green_ogre = {
        config = { extra = {
            chips = 132,
			limit = 1,
        }},
        pos = { x = 2, y = 2 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
            return {vars = {card.ability.extra.chips, card.ability.extra.limit}}
        end,
        calculate = function(self, card, context)
            if context.joker_main then
                return {
					chips = card.ability.extra.chips,
				}
            end
        end,
		add_to_deck = function(self, card, from_debuff)
			SMODS.change_play_limit(-card.ability.extra.limit)
		end,
		remove_from_deck = function(self, card, from_debuff)
			SMODS.change_play_limit(card.ability.extra.limit)
		end,
    },
	'piscodemon', piscodemon = {
        config = { extra = {
			xchips = 1.0,
			xchip_mod = 0.10,
			xchip_mod_mod = 0.05
        }},
        pos = { x = 3, y = 2 },
        cost = 8,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {vars = {card.ability.extra.xchip_mod, card.ability.extra.xchip_mod_mod, card.ability.extra.xchips}}
        end,
        calculate = function(self, card, context)
			if context.using_consumeable and not context.blueprint then
				if context.consumeable.ability.set == "Spectral" then
					card.ability.extra.xchip_mod = card.ability.extra.xchip_mod + card.ability.extra.xchip_mod_mod
				end
				card.ability.extra.xchips = card.ability.extra.xchips + card.ability.extra.xchip_mod
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex'), colour = G.C.CHIPS})
			elseif context.joker_main then
				return {
					xchips = card.ability.extra.xchips,
				}
			end
        end,
	},
	'astos', astos = {
        config = { extra = {
        }},
        pos = { x = 4, y = 2 },
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
	'hill_gigas', hill_gigas = {
        config = { extra = {
			chips = 15,
        }},
        pos = { x = 5, y = 2 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {
				card.ability.extra.chips
			}}
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'fire_hydra', fire_hydra = {
        config = { extra = {
			mult = 3,
        }},
        pos = { x = 6, y = 2 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {
				card.ability.extra.mult
			}}
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'desert_baretta', desert_baretta = {
        config = { extra = {
			xp = 3,
			cap = 4,
        }},
        pos = { x = 7, y = 2 },
        cost = 6,
        rarity = 2,
        blueprint_compat = false,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.xp * 100, card.ability.extra.cap } }
        end,
        calculate = function(self, card, context)
			if context.check_xp and not context.blueprint and G.GAME.dollars < card.ability.extra.cap then
				return { xp = card.ability.extra.xp }
			end
        end,
		load_check = function()
			return next(SMODS.find_mod("YGGDRASIL")) and true
		end,
	},
	'white_shark', white_shark = {
        config = { extra = {
			dollars = 1
        }},
        pos = { x = 8, y = 2 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {
				card.ability.extra.dollars
			}}
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'spirit_naga', spirit_naga = {
        config = { extra = {
			odds = 3,
			xchips = 1.5,
        }},
        pos = { x = 9, y = 2 },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			local probvars = {SMODS.get_probability_vars(card, 1, card.ability.extra.odds)}
            return {vars = {probvars[1], probvars[2], card.ability.extra.xchips}}
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'evil_eye', evil_eye = {
        config = { extra = {
			retriggers = 2,
			odds = 4,
			compatible = false,
        }},
        pos = { x = 0, y = 3 },
        cost = 10,
        rarity = 3,
        blueprint_compat = false,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			local probvars = {SMODS.get_probability_vars(card, 1, card.ability.extra.odds)}
            return {vars = {card.ability.extra.retriggers, card.ability.extra.retriggers == 1 and "" or "s", probvars[1], probvars[2]}}
        end,
        calculate = function(self, card, context)
			if not context.blueprint then
				if context.before then
					card.ability.extra.compatible = false
				end
				if context.retrigger_joker_check and G.STATE == G.STATES.HAND_PLAYED and not context.other_context.after then
					local my_index = -1
					for i=1,#G.jokers.cards do
						local this_card = G.jokers.cards[i]
						if this_card == card then
							my_index = i
						elseif i == my_index+1 and context.other_card == this_card then
							card.ability.extra.compatible = true
							return {
								repetitions = card.ability.extra.retriggers,
							}
						end
					end
				end
				if context.after and SMODS.pseudorandom_probability(card, "j_bub_evil_eye", 1, card.ability.extra.odds) then
					if card.ability.extra.compatible then
						local my_index = -1
						for i=1,#G.jokers.cards do
							local this_card = G.jokers.cards[i]
							if this_card == card then
								my_index = i
							elseif i == my_index+1 then
								return {
									func = function()
										this_card.getting_sliced = true
										G.E_MANAGER:add_event(Event({func = function()
											card:juice_up(0.8, 0.8)
											this_card:start_dissolve()
										return true end }))
									end,
								}
							end
						end
					end
				end
			end
        end,
	},
	'zombie_dragon', zombie_dragon = {
        config = { extra = {
        }},
        pos = { x = 1, y = 3 },
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
	'warmech', warmech = {
        config = { extra = {
        }},
        pos = { x = 2, y = 3 },
        cost = 10,
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
	'purple_worm', purple_worm = {
        config = { extra = {
			discard_sel = 3,
			chips = 0,
			chip_mod = 5,
        }},
        pos = { x = 3, y = 3 },
        cost = 9,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {vars = {card.ability.extra.discard_sel, card.ability.extra.chip_mod, card.ability.extra.chips}}
        end,
        calculate = function(self, card, context)
			if context.discard and not context.blueprint then
				card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
				return {
					delay = 0.2,
					message = localize("k_upgrade_ex"),
					colour = G.C.CHIPS
				}
			end
			if context.joker_main and card.ability.extra.chips > 0 then
				return {
					chips = card.ability.extra.chips
				}
			end
        end,
		add_to_deck = function(self, card, from_debuff)
			SMODS.change_discard_limit(card.ability.extra.discard_sel)
		end,
		remove_from_deck = function(self, card, from_debuff)
			SMODS.change_discard_limit(-card.ability.extra.discard_sel)
		end,
	},
	'lich', lich = {
        config = { extra = {
        }},
        pos = { x = 4, y = 3 },
        cost = 8,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {
				vars = {
					10, 0,
					2, 0,
					1, 0,
					0.15, 1,
					3, "s", 0
				}
			}
        end,
        calculate = function(self, card, context)
        end,
		in_pool = function(self)
			return false
		end,
	},
	'marilith', marilith = {
        config = {
			h_size = 1,
			extra = {
				h_size = 1,
				h_sel = 1,
			}
		},
        pos = { x = 5, y = 3 },
        cost = 8,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        rental_compat = true,
		loc_vars = function(self, info_queue, card)
			return {vars = {
				card.ability.h_size,
				card.ability.extra.h_size,
				card.ability.extra.h_size == 1 and "" or "s",
				card.ability.extra.h_sel,
			}}
        end,
		add_to_deck = function(self, card, from_debuff)
            G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.h_size
            ease_hands_played(card.ability.extra.h_size)
			SMODS.change_play_limit(card.ability.extra.h_sel)
		end,
		remove_from_deck = function(self, card, from_debuff)
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.h_size
            ease_hands_played(-card.ability.extra.h_size)
			SMODS.change_play_limit(-card.ability.extra.h_sel)
		end,
        calculate = function(self, card, context)
        end,
	},
	'kraken', kraken = {
        config = { extra = {
        }},
        pos = { x = 6, y = 3 },
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
	'tiamat', tiamat = {
        config = { extra = {
        }},
        pos = { x = 7, y = 3 },
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
	'garland', garland = {
        config = { extra = {
        }},
        pos = { x = 8, y = 3 },
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
	'chaos', chaos = {
        config = { extra = {
        }},
        pos = { x = 9, y = 3 },
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
	
	--[[ff5
	'bartz', bartz = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 0, y = 0 },
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
	'lenna', lenna = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 1, y = 0 },
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
	'galuf', galuf = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 2, y = 0 },
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
	'faris', faris = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 3, y = 0 },
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
	'krile', krile = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 4, y = 0 },
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
	'hiryu', hiryu = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 5, y = 0 },
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
	'wing_raptor', wing_raptor = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 0, y = 1 },
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
	'garula', garula = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 1, y = 1 },
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
	'liquid_flame', liquid_flame = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 2, y = 1 },
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
	'archaeoaevis', archaeoaevis = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 5, y = 1 },
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
	'gilgamesh', gilgamesh = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 0, y = 2 },
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
	'enkidu', enkidu = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 1, y = 2 },
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
	'dragon_pod', dragon_pod = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 2, y = 2 },
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
	'atomos', atomos = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 3, y = 2 },
        cost = 8,
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
	'exdeath', exdeath = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 8, y = 2 },
        cost = 10,
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
	'famed_mimic_gogo', famed_mimic_gogo = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 9, y = 3 },
        cost = 10,
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
	'calofisteri', calofisteri = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 0, y = 4 },
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
	'azulmagia', azulmagia = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 1, y = 4 },
        cost = 10,
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
	'catastrophe', catastrophe = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 2, y = 4 },
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
	'necrophobe', necrophobe = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 7, y = 4 },
        cost = 10,
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
	'omega', omega = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 8, y = 4 },
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
	'shinryu', shinryu = {
        config = { extra = {
        }},
		atlas = "finalfantasy5",
        pos = { x = 9, y = 4 },
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
	},--]]
}

SMODS.Atlas{
	key = "finalfantasy",
	path = "finalfantasy_redesign.png",
	px = 71,
	py = 95,
}
SMODS.Atlas{
	key = "finalfantasy5",
	path = "finalfantasy5.png",
	px = 71,
	py = 95,
}

--jokers
for _, k in ipairs(jokers) do
	local v = jokers[k]
	if not v.rarity then v.rarity = 1 end
	BUB.data.buffer_insert("Jokers", v, {key = k, atlas = "finalfantasy"})
end