CLASS.name = "Smuggler"
CLASS.faction = FACTION_CITIZEN
CLASS.pay = 0

function CLASS:CanSwitchTo(client)
	return false
end

CLASS_SMUGGLER = CLASS.index