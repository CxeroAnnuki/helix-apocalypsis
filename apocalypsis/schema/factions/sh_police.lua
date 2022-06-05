
-- Since this faction is not a default, any player that wants to become part of this faction will need to be manually
-- whitelisted by an administrator.

FACTION.name = "Police"
FACTION.description = "Keeping the peace, by any means neccesary."
FACTION.color = Color(20, 120, 185)
FACTION.pay = 10 -- How much money every member of the faction gets paid at regular intervals.
FACTION.weapons = {"ix_stunstick"} -- Weapons that every member of the faction should start with.
FACTION.isGloballyRecognized = true -- Makes it so that everyone knows the name of the characters in this faction.
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

-- Gives newly created police characters equipment
function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("pistol", 1)
	inventory:Add("pistolammo", 2)
	inventory:Add("zip_tie", 1)
	inventory:Add("police_uniform", 1)
end

-- Gives any character transferred to the faction equipment
function FACTION:OnTransferred(character)
	local inventory = character:GetInventory()

	inventory:Add("pistol", 1)
	inventory:Add("pistolammo", 2)
	inventory:Add("zip_tie", 1)
	inventory:Add("police_uniform", 1)
end

FACTION_POLICE = FACTION.index
