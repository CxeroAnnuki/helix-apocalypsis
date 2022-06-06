
ITEM.name = "Stimpak"
ITEM.model = Model("models/healthvial.mdl")
ITEM.description = "A vial filled with medication."
ITEM.category = "Consumables"
ITEM.classes = {CLASS_VENDOR}
ITEM.price = 20

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 50, client:GetMaxHealth()))
	end
}
