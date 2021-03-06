newTalentType{ 
	all_limited=true,
	spell_list="arcane",
	type="conjuration",
	name="conjuration",
	description = "Conjuration magic deals with the creation magical creatures and substances"
}

newTalent{
	name = "Acid Splash",
	type = {"conjuration", 1},
	mode = 'activated',
	level = 1,
	points = 1,
	cooldown = 8,
	tactical = { BUFF = 2 },
	range = 5,
	requires_target = true,
	target = function(self, t)
		local tg = {type="bolt", range=self:getTalentRange(t), talent=t}
		return tg
	end,
	action = function(self, t)
		local tg = self:getTalentTarget(t)
		local x, y = self:getTarget(tg)
		local _ _, x, y, _, _ = self:canProject(tg, x, y)
		if not x or not y then return nil end

		local damage = rng.dice(1,3)

		self:projectile(tg, x, y, DamageType.ACID, {dam=damage})

		return true
	end,
	info = function(self, t)
		return ([[You fire a small orb of acid at the target, dealing 1d3 damage]])
	end,
}

newTalent{	
	name = "Grease",
	type = {"conjuration", 1},
	mode = 'activated',
	level = 1,
	points = 1,
	cooldown = 0,
	tactical = { BUFF = 2 },
	range = 5,
	requires_target = false,
	radius = 1.5,
	target = function(self, t)
		local tg = {type="ball", range=self:getTalentRange(t), nolock = true, radius=self:getTalentRadius(t), talent=t}
		return tg
	end,
	action = function(self, t)
		local tg = self:getTalentTarget(t)
		local x, y = self:getTarget(tg)
        local _ _, x, y, _, _ = self:canProject(tg, x, y)
		if not x or not y then return nil end

		local duration = 5

		game.level.map:addEffect(self,
			x, y, duration,
			DamageType.GREASE, {dc=10},
			1.5,
			5, nil,
			engine.Entity.new{alpha=100, display='', color_br=200, color_bg=190, color_bb=30},
			nil, true
		)

		return true
	end,
	info = function(self, t)

		return ([[You cover the floor in grease, causing monsters to fall.]])
	end,
}

newTalent{
	name = "Summon Creature I",
	type = {"conjuration", 1},
	mode = "activated",
	level = 1,
	points = 1,
	cooldown = 0,
	range = 3,
	setCreature = function(t, creature)
		t.creature = creature
	end,
	target = function(self, t)
		return {type="hit", range=self:getTalentRange(t), nolock = true, talent=t}
	end,
	makeCreature = function(self, t)
		local NPC = require "mod.class.NPC"
		local m = NPC.new{
			type = "animal", subtype = "wolf",
			display = "q", color=colors.LIGHT_GREEN,
			name = "summoned wolf", faction = self.faction,
			desc = [[A large peaceful wolf.]],
			--autolevel = "none",
			never_anger = true,
			
			ai = "ally",
			ai_state = { talent_in=1, ally_compassion=10},
			ai_tactic = resolvers.tactic"default",
			
			stats = {str=0, dex=0, con=0, int=0, wis=0, cha=0, luc=0},
			inc_stats = {
				str = 13,
				dex = 15,
				con = 15,
				int = 2, 
				wis = 12,
				cha = 6,
				luc = 10,
			},
			level_range = {self.level, self.level}, exp_worth = 0,

			max_life = 20,

			combat_base_ac = 10, combat_dr = 0,
			combat = { dam={1,4}, atk=1, },

			summoner = self, summoner_gain_exp=true,
			summon_time = 10,
			ai_target = {actor=target},
		}
		return m
	end,
	action = function(self, t)
		-- Choose creature
		local d = require("mod.dialogs.SummonCreatureI").new(t)

		local co = coroutine.running()
		d.unload = function() coroutine.resume(co, t.creature) end --This is currently bugged, only works if the player has already summoned,

		game:registerDialog(d)
		
		if not coroutine.yield() then return nil end

		local tg = self:getTalentTarget(t)
		local x, y =  self:getTarget(tg)
		local _ _, _, _, x, y = self:canProject(tg, x, y)
		local blocked = game.level.map(x, y, Map.ACTOR)
		if blocked then
			game.logPlayer(self, "You must summon on an empty square!")
			return nil
		end
		if not x or not y then
			game.logPlayer(self, "You cannot summon there") 
			return nil 
		end

		if t.creature then
			game.logPlayer(self,("Player summons a %s!"):format(t.creature))
		else
			game.logPlayer(self,"Player doesnt summon a creature")
		end

		local creature = t.makeCreature(self, t)
		game.zone:addEntity(game.level, creature, "actor", x, y)
		return true

		
	end,
	info = function(self, t)
		return ([[You summon a single creature to do your bidding.]])
	end,
}

newTalent{	
	name = "Mage Armor",
	type = {"conjuration", 1},
	mode = 'activated',
	level = 2,
	points = 1,
	cooldown = 0,
	tactical = { BUFF = 2 },
	range = 1,
	requires_target = true,
	action = function(self, t)
		local tg = {type="hit", range=self:getTalentRange(t)}
		local x, y, target = self:getTarget(tg)
		if not x or not y or not target then return nil end
		if core.fov.distance(self.x, self.y, x, y) > 1 then return nil end

		target:setEffect(self.EFF_MAGE_ARMOR, 10, {})
		
		return true
	end,
	info = function(self, t)

		return ([[An invisible but tangible field of force surrounds the target, providing a +4 armor bonus to AC.]])
	end,
}