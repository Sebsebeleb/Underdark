-- Veins of the Earth
-- Zireael
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

--Amulets
newEntity{
    define_as = "BASE_AMULET",
    slot = "AMULET",
    type = "amulet", subtype = "amulet",
    display = "♂", color=colors.RED,
    encumber = 0,
    rarity = 5,
    name = "an amulet",
    desc = [[A beautiful amulet.]],
}

newEntity{
    base = "BASE_AMULET",
    name = "amulet of natural armor +1",
    unided_name = "an amulet",
    identified = false,
    level_range = {1,10},
    cost = 2000,
--    desc = [[This bone amulet grants you +1 AC.]]
    wielder = {
    combat_def=1
  }, 
}

newEntity{
    base = "BASE_AMULET",
    name = "amulet of natural armor +2",
    unided_name = "an amulet",
    identified = false,
    level_range = {1,10},
    cost = 8000,
--    desc = [[This bone amulet grants you +2 AC.]]
    wielder = {
    combat_def=2
  }, 
}

newEntity{
    base = "BASE_AMULET",
    name = "amulet of natural armor +3",
    unided_name = "an amulet",
    identified = false,
    level_range = {1,10},
    cost = 18000,
--    desc = [[This scaly amulet grants you +3 AC.]]
    wielder = {
    combat_def=3
  }, 
}

newEntity{
    base = "BASE_AMULET",
    name = "amulet of natural armor +4",
    unided_name = "an amulet",
    identified = false,
    level_range = {1,10},
    cost = 32000,
 --   desc = [[This scaly amulet grants you +4 AC.]]
    wielder = {
    combat_def=4
  }, 
}

newEntity{
    base = "BASE_AMULET",
    name = "amulet of natural armor +5",
    unided_name = "an amulet",
    identified = false,
    level_range = {10,30},
    cost = 50000,
    wielder = {
    combat_def=5
  }, 
}

--Rings
newEntity{
    define_as = "BASE_RING",
    slot = "RING",
    type = "ring", subtype = "ring",
    display = "σ", color=colors.RED,
    encumber = 0,
    rarity = 5,
    name = "a ring",
    desc = [[A pretty ring.]],
}

newEntity{
    base = "BASE_RING",
    name = "ring of protection +1",
    unided_name = "a ring",
    identified = false,
    level_range = {1,10},
    cost = 2000,
    wielder = {
    combat_def=1
  }, 
}

newEntity{
    base = "BASE_RING",
    name = "ring of protection +2",
    unided_name = "a ring",
    identified = false,
    level_range = {1,10},
    cost = 8000,
    wielder = {
    combat_def=2
  }, 
}

newEntity{
    base = "BASE_RING",
    name = "ring of protection +3",
    unided_name = "a ring",
    identified = false,
    level_range = {1,10},
    cost = 18000,
    wielder = {
    combat_def=3
  }, 
}

newEntity{
    base = "BASE_RING",
    name = "ring of protection +4",
    unided_name = "a ring",
    identified = false,
    level_range = {1,10},
    cost = 32000,
    wielder = {
    combat_def=4
  }, 
}

newEntity{
    base = "BASE_RING",
    name = "ring of protection +5",
    unided_name = "a ring",
    identified = false,
    level_range = {1,10},
    cost = 50000,
    wielder = {
    combat_def=5
  }, 
}

--Bracers
newEntity{
    define_as = "BASE_BRACERS",
    slot = "GLOVES",
    type = "bracer", subtype = "bracer",
    display = "Ξ", color=colors.RED,
    encumber = 1,
    rarity = 8,
    name = "bracers",
    desc = [[A set of bracers.]],
}

newEntity{
    base = "BASE_BRACERS",
    name = "bracers of armor +1",
    unided_name = "bracers",
    identified = false,
    level_range = {1,10},
    cost = 2000,
    wielder = {
    combat_def=1
  }, 
}

newEntity{
    base = "BASE_BRACERS",
    name = "bracers of armor +2",
    unided_name = "bracers",
    identified = false,
    level_range = {1,10},
    cost = 8000,
    wielder = {
    combat_def=2
  }, 
}

newEntity{
    base = "BASE_BRACERS",
    name = "bracers of armor +3",
    unided_name = "bracers",
    identified = false,
    level_range = {1,10},
    cost = 18000,
    wielder = {
    combat_def=3
  }, 
}

newEntity{
    base = "BASE_BRACERS",
    name = "bracers of armor +4",
    unided_name = "bracers",
    identified = false,
    level_range = {1,10},
    cost = 32000,
    wielder = {
    combat_def=4
  }, 
}

newEntity{
    base = "BASE_BRACERS",
    name = "bracers of armor +5",
    unided_name = "bracers",
    identified = false,
    level_range = {1,10},
    cost = 50000,
    wielder = {
    combat_def=5
  }, 
}

--Cloaks
newEntity{
    define_as = "BASE_CLOAK",
    slot = "CLOAK",
    type = "cloak", subtype = "cloak",
    display = "♠", color=colors.RED,
    encumber = 0,
    rarity = 5,
    name = "a cloak",
    desc = [[A beautiful cloak.]],
}

newEntity{
    base = "BASE_CLOAK",
    name = "cloak of elvenkind",
    unided_name = "a cloak",
    display = "♠", color=colors.GREEN,
    identified = false,
    level_range = {1,10},
    cost = 2500,
    wielder = {
    skill_hide=5
  }, 
}

--Boots
newEntity{
    define_as = "BASE_BOOTS",
    slot = "BOOTS",
    type = "boots", subtype = "boots",
    display = "ω", color=colors.RED,
    encumber = 1,
    rarity = 5,
    name = "boots",
    desc = [[A pair of boots.]],
}

newEntity{
    base = "BASE_BOOTS",
    name = "boots of striding and springing",
    unided_name = "boots",
    identified = false,
    level_range = {1,10},
    cost = 5500,
    wielder = {
    skill_jump=5,
    movement_speed_bonus = 0.33
  }, 
}

newEntity{
    base = "BASE_BOOTS",
    name = "boots of elvenkind",
    unided_name = "boots",
    identified = false,
    level_range = {1,10},
    cost = 2500,
    wielder = {
    skill_movesilently=5
  }, 
}

--Belts
newEntity{
    define_as = "BASE_BELT",
    slot = "BELT",
    type = "belt", subtype = "belt",
    display = "=", color=colors.RED,
    encumber = 1,
    rarity = 5,
    name = "a belt",
    desc = [[A sturdy belt.]],
}

newEntity{
    base = "BASE_BELT",
    name = "belt of giant strength +4",
    unided_name = "a belt",
    identified = false,
    level_range = {1,10},
    cost = 16000,
    wielder = {
--    str=4
  }, 
}

newEntity{
    base = "BASE_BELT",
    name = "belt of giant strength +6",
    unided_name = "a belt",
    identified = false,
    level_range = {1,10},
    cost = 36000,
    wielder = {
--    str=6
  }, 
}


--Wands
newEntity{
    define_as = "BASE_WAND",
    slot = "INVEN", 
    type = "wand", subtype = "wand",
    display = "-", color=colors.RED,
    encumber = 0,
    rarity = 50,
    name = "A wand",
    desc = [[A wand.]],
}

--Scrolls
newEntity{
    define_as = "BASE_SCROLL",
    slot = "INVEN", 
    type = "scroll", subtype = "scroll",
    display = "?", color=colors.WHITE,
    encumber = 0,
    rarity = 50,
    name = "A scroll",
    desc = [[A scroll.]],
}

--Tattoos
newEntity{
    define_as = "BASE_TATTOO",
    slot = "INVEN", 
    type = "scroll", subtype = "tattoo",
    display = "?", color=colors.RED,
    encumber = 0,
    rarity = 50,
    name = "A tattoo",
    desc = [[A tattoo.]],
}
