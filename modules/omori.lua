local jokers = {
	"sunny", sunny = {
		pos = { x = 0, y = 0 },
		blueprint_compat = true,
		eternal_compat = true,
		rarity = 4,
		cost = 20,
		pools = {Sunny = true},
		loc_vars = function(self, info_queue, card)
			return { vars = {
				card.ability.extra.asc,
				card.ability.extra.threshold,
				card.ability.extra.threshold == 1 and "" or "s",
				card.ability.extra.count,
				card.ability.extra.asc_curr,
			} }
		end,
		config = {
			extra = {
				asc = 2,
				asc_curr = 0,
				threshold = 4,
				count = 0,
			},
		},
		calculate = function(self, card, context)
			if not JoyousSpring or JoyousSpring.can_use_abilities(card) then
				if card.ability.extra.asc_curr > 0 and (context.joker_main or context.forcetrigger) then
					return {
						plus_asc = card.ability.extra.asc_curr
					}
				end
				if context.before then
					local did_it = false
					for i=1, #G.play.cards do
						local this_card = G.play.cards[i]
						local in_scoring = false
						for ii=1, #context.scoring_hand do
							local this_other_card = context.scoring_hand[ii]
							if this_card == this_other_card then
								in_scoring = true
								break
							end
						end
						if not in_scoring then
							card.ability.extra.count = card.ability.extra.count + 1
							if card.ability.extra.count >= card.ability.extra.threshold then
								card.ability.extra.count = 0
								card.ability.extra.asc_curr = card.ability.extra.asc_curr + card.ability.extra.asc
								did_it = true
							end
						end
					end
					if did_it then
						return {
							message = localize("k_upgrade_ex"),
							colour = G.C.GOLD,
						}
					end
				end
			end
		end,
		load_check = function()
			return next(SMODS.find_mod("entr")) and true
		end,
	},
}

SMODS.Atlas{
	key = "omor",
	path = "omor.png",
	px = 71,
	py = 95,
}

local alias__Card_is_sunny = Card.is_sunny or function(card) return nil end
function Card:is_sunny()
	if self.config.center.key == "j_bub_sunny" then return true end
	return alias__Card_is_sunny(self)
end


--jokers
for _, k in ipairs(jokers) do
	local v = jokers[k]
	if not v.rarity then v.rarity = 1 end
	BUB.data.buffer_insert("Jokers", v, {key = k, atlas = "omor"})
end