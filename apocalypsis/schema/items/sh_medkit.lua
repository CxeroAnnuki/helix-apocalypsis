
ITEM.name = "Medical Kit"
ITEM.model = Model("models/items/healthkit.mdl")
ITEM.description = "A white box filled with medical supplies."
ITEM.category = "Consumables"
ITEM.classes = {CLASS_VENDOR}
ITEM.price = 35
ITEM.width = 2
ITEM.height = 2

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(client:GetMaxHealth())
	end
}
