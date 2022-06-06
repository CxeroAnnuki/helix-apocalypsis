
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "Citizen"
FACTION.description = "The salt of the earth."
FACTION.isDefault = true
FACTION.color = Color(100, 60, 60)
FACTION.pay = 5
FACTION.models = {
	"models/humans/group27/female_01.mdl",
	"models/humans/group27/female_02.mdl",
	"models/humans/group27/female_03.mdl",
	"models/humans/group27/female_04.mdl",
	"models/humans/group27/female_06.mdl",
	"models/humans/group27/female_07.mdl",
	"models/humans/group27/male_01.mdl",
	"models/humans/group27/male_02.mdl",
	"models/humans/group27/male_03.mdl",
	"models/humans/group27/male_04.mdl",
	"models/humans/group27/male_05.mdl",
	"models/humans/group27/male_06.mdl",
	"models/humans/group27/male_07.mdl",
	"models/humans/group27/male_08.mdl",
	"models/humans/group27/male_09.mdl"
}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_CITIZEN = FACTION.index
