
-- Here is where all of your serverside hooks should go.

-- Enables Flashlight use
function Schema:PlayerSwitchFlashlight(client, enabled)
	return true
end

function Schema:LoadData()
	self:LoadPoliceLocks()
end

function Schema:SaveData()
	self:SavePoliceLocks()
end

--Player cannot change classes while resticted (zip tied or whatever)
function Schema:CanPlayerJoinClass(client, class, info)
	if (client:IsRestricted()) then
		client:Notify("You cannot change classes when you are restrained!")

		return false
	end
end

--Player cannot spawn objects while restricted?
function Schema:PlayerSpawnObject(client)
	if (client:IsRestricted()) then
		return false
	end
end

--Allows for untying restricted players, and for locking/unlocking police locks
function Schema:PlayerUse(client, entity)
	if (client:IsPolice() and entity:IsDoor() and IsValid(entity.ixLock) and client:KeyDown(IN_SPEED)) then
		entity.ixLock:Toggle(client)
		return false
	end

	if (!client:IsRestricted() and entity:IsPlayer() and entity:IsRestricted() and !entity:GetNetVar("untying")) then
		entity:SetAction("@beingUntied", 5)
		entity:SetNetVar("untying", true)

		client:SetAction("@unTying", 5)

		client:DoStaredAction(entity, function()
			entity:SetRestricted(false)
			entity:SetNetVar("untying")
		end, 5, function()
			if (IsValid(entity)) then
				entity:SetNetVar("untying")
				entity:SetAction()
			end

			if (IsValid(client)) then
				client:SetAction()
			end
		end)
	end
end

--Player cannot use sprays
function Schema:PlayerSpray(client)
	return true
end