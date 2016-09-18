-- =============================================================================
--
--       Filename:  eMythicCheck.lua
--
--    Description:  Shows what mythic instances are already completed.
--
--        Version:  7.0.1
--
--         Author:  Mathias Jost (mail@mathiasjost.com)
--
-- =============================================================================



-- -----------------------------------------------------------------------------
-- Checks what instances are on lockout
-- -----------------------------------------------------------------------------
local function checkLockouts()
	for numSaved = GetNumSavedInstances(), 1, -1 do
		instanceName, instanceID, instanceReset, instanceDifficulty, locked, extended, instanceIDMostSig, isRaid, maxPlayers, difficultyName, maxBosses, defeatedBosses = GetSavedInstanceInfo(numSaved)
		print(instanceName .. " : " .. instanceID .. " : " .. tostring(locked))
	end
end


checkLockouts()

-- Court of Stars : 172473264 : true
-- Assault on Violet Hold : 172248077 : true
-- The Arcway : 172468420 : true
-- Black Rook Hold : 172478036 : true
-- Vault of the Wardens : 172148990 : true
-- Maw of Souls : 172245461 : true
-- Halls of Valor : 172399748 : true
-- Darkheart Thicket : 172158382 : true
-- Neltharion's Lair : 172458072 : true
-- Eye of Azshara : 172233135 : true