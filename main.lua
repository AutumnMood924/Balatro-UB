BUB = {}
BUB.INIT = {}

BUB.mod_id = 'BalatroUniversesBeyond'
BUB.mod_prefix = 'bub'

BUB.mod = SMODS.current_mod

BUB.mod.optional_features = function()
	return {
		retrigger_joker = true,
        quantum_enhancements = true,
        cardareas = {
            --unscored = true,
            --graveyard = true,
        },
        amm = {
            --suit_levels = true,
            graveyard = true,
        },
	}
end

BUB.config = NFS.load(BUB.mod.path.."config.lua")()

NFS.load(BUB.mod.path.."overrides.lua")()
BUB.func = NFS.load(BUB.mod.path.."func.lua")()
BUB.data = NFS.load(BUB.mod.path.."data.lua")()

BUB.FF = NFS.load(BUB.mod.path.."modules/finalfantasy.lua")()
BUB.DR = NFS.load(BUB.mod.path.."modules/deltarune.lua")()
if next(SMODS.find_mod("JoyousSpring")) then
	BUB.YGO = NFS.load(BUB.mod.path.."modules/yugioh.lua")()
end

SMODS.Atlas{
	key = "modicon",
	path = "modicon.png",
	px = 34,
	py = 34,
}

BUB.data.register_objects()