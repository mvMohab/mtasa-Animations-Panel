local animEnable = {}
local syncPlayers = {}



addEvent("pullup",true)
addEventHandler("pullup",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "pullup", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "pullup", player, true)
		end
	end
)

addEvent("policeanim",true)
addEventHandler("policeanim",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "policeanim", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "policeanim", player, true)
		end
	end
)

addEvent("t7ya2",true)
addEventHandler("t7ya2",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "t7ya2", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "t7ya2", player, true)
		end
	end
)

addEvent("t7ya1",true)
addEventHandler("t7ya1",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "t7ya1", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "t7ya1", player, true)
		end
	end
)

addEvent("break",true)
addEventHandler("break",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "break", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "break", player, true)
		end
	end
)

addEvent("weppos2",true)
addEventHandler("weppos2",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "weppos2", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "weppos2", player, true)
		end
	end
)

addEvent("weppos1",true)
addEventHandler("weppos1",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "weppos1", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "weppos1", player, true)
		end
	end
)

addEvent("pushup",true)
addEventHandler("pushup",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "pushup", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "pushup", player, true)
		end
	end
)

addEvent("sit2",true)
addEventHandler("sit2",root,
function(player)
	if (not animEnable[player]) then
		animEnable[player] = true
		triggerClientEvent(syncPlayers, "sit2", player, true)
	else
		animEnable[player] = false
		triggerClientEvent(syncPlayers, "sit2", player, true)
	end
end)

addEvent("abdominal",true)
addEventHandler("abdominal",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "abdominal", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "abdominal", player, true)
		end
	end
)

addEvent("sur",true)
addEventHandler("sur",root,
	function(player)
		if (not animEnable[player]) then
			animEnable[player] = true
			triggerClientEvent(syncPlayers, "sur", player, true)
		else
			animEnable[player] = false
			triggerClientEvent(syncPlayers, "sur", player, true)
		end
	end
)

addEvent("onClientSync", true )
addEventHandler("onClientSync", resourceRoot,
    function()
        table.insert(syncPlayers, client)
		for player, enable in ipairs(animEnable) do
			if (enable) then
				triggerClientEvent(client, "sur", player, true)
				triggerClientEvent(client, "t7ya2", player, true)
				triggerClientEvent(client, "t7ya1", player, true)
				triggerClientEvent(client, "policeanim", player, true)
				triggerClientEvent(client, "pullup", player, true)
				triggerClientEvent(client, "break", player, true)
				triggerClientEvent(client, "weppos1", player, true)
				triggerClientEvent(client, "pushup", player, true)
				triggerClientEvent(client, "sit2", player, true)
				triggerClientEvent(client, "abdominal", player, true)
			end
		end
    end 
)

addEventHandler("onPlayerQuit", root,
    function()
        for i, player in ipairs(syncPlayers) do
            if source == player then 
                table.remove(syncPlayers, i)
                break
            end 
        end
        if (animEnable[source] == true or animEnable[source] == false) then animEnable[source] = nil end
    end
)

anim = {}



function anim.otur1()
	setPedAnimation(source, "otur", "WEAPON_crouch", -1, true, false)
end
addEvent("anim.otur1", true)
addEventHandler("anim.otur1", root, anim.otur1)

function anim.fuck()
	setPedAnimation(source, "RIOT", "RIOT_FUKU", -1, false, false, true, false)
end
addEvent("anim.fuck", true)
addEventHandler("anim.fuck", root, anim.fuck)

function anim.chat()
	setPedAnimation(source, "ped", "IDLE_chat")
end
addEvent("anim.chat", true)
addEventHandler("anim.chat", root, anim.chat)

function anim.smoke()
	setPedAnimation(source, "LOWRIDER", "M_smklean_loop", -1, true, false, false)
end
addEvent("anim.smoke", true)
addEventHandler("anim.smoke", root, anim.smoke)

function anim.sexy()
	setPedAnimation( source, "STRIP", "STR_B2C")
end
addEvent("anim.sexy", true)
addEventHandler("anim.sexy", root, anim.sexy)

function anim.dance()
	setPedAnimation( source, "DANCING", "dance_loop")
end
addEvent("anim.dance", true)
addEventHandler("anim.dance", root, anim.dance)

function anim.dance2()
	setPedAnimation( source, "DANCING", "DAN_Down_A")
end
addEvent("anim.dance2", true)
addEventHandler("anim.dance2", root, anim.dance2)

function anim.dance3()
	setPedAnimation( source, "DANCING", "DAN_Left_A")
end
addEvent("anim.dance3", true)
addEventHandler("anim.dance3", root, anim.dance3)

function anim.dance4()
	setPedAnimation( source, "DANCING", "DAN_Loop_A")
end
addEvent("anim.dance4", true)
addEventHandler("anim.dance4", root, anim.dance4)

function anim.dance5()
	setPedAnimation( source, "DANCING", "DAN_Right_A")
end
addEvent("anim.dance5", true)
addEventHandler("anim.dance5", root, anim.dance5)

function anim.dance6()
	setPedAnimation( source, "DANCING", "DAN_Up_A")
end
addEvent("anim.dance6", true)
addEventHandler("anim.dance6", root, anim.dance6)

function anim.dance7()
	setPedAnimation( source, "DANCING", "dnce_M_a")
end
addEvent("anim.dance7", true)
addEventHandler("anim.dance7", root, anim.dance7)

function anim.dance8()
	setPedAnimation( source, "DANCING", "dnce_M_b")
end
addEvent("anim.dance8", true)
addEventHandler("anim.dance8", root, anim.dance8)

function anim.dance9()
	setPedAnimation( source, "DANCING", "dnce_M_c")
end
addEvent("anim.dance9", true)
addEventHandler("anim.dance9", root, anim.dance9)

function anim.dance10()
	setPedAnimation( source, "DANCING", "dnce_M_d")
end
addEvent("anim.dance10", true)
addEventHandler("anim.dance10", root, anim.dance10)

function anim.dance11()
	setPedAnimation( source, "DANCING", "dnce_M_e")
end
addEvent("anim.dance11", true)
addEventHandler("anim.dance11", root, anim.dance11)

function anim.sit1()
	setPedAnimation( source, "ped", "SEAT_idle", -1, true, false, false )
end
addEvent("anim.sit1", true)
addEventHandler("anim.sit1", root, anim.sit1)

function anim.sit2()
	setPedAnimation( source, "BEACH", "Lay_Bac_Loop", -1, true, false, false )
end
addEvent("anim.sit2", true)
addEventHandler("anim.sit2", root, anim.sit2)

function anim.sit3()
	setPedAnimation( source, "BEACH", "SitnWait_loop_W", -1, true, false, false )
end
addEvent("anim.sit3", true)
addEventHandler("anim.sit3", root, anim.sit3)

function anim.sit4()
	setPedAnimation( source, "BEACH", "ParkSit_M_loop", -1, true, false, false )
end
addEvent("anim.sit4", true)
addEventHandler("anim.sit4", root, anim.sit4)

function anim.sit5()
	setPedAnimation( source, "BEACH", "ParkSit_W_loop", -1, true, false, false )
end
addEvent("anim.sit5", true)
addEventHandler("anim.sit5", root, anim.sit5)


function anim.fall1()
	setPedAnimation( source, "ped", "FLOOR_hit_f", -1, false, false, false )
end
addEvent("anim.fall1", true)
addEventHandler("anim.fall1", root, anim.fall1)

function anim.aim1()
	setPedAnimation( source, "SHOP", "ROB_Loop", -1, true, false, false )
end
addEvent("anim.aim1", true)
addEventHandler("anim.aim1", root, anim.aim1)

function anim.aim2()
	setPedAnimation( source, "SHOP", "SHP_Gun_Aim", -1, true, false, false )
end
addEvent("anim.aim2", true)
addEventHandler("anim.aim2", root, anim.aim2)





function anim.handsup()
	setPedAnimation( source, "shop", "SHP_Rob_HandsUp", -1, true, false, false )
end
addEvent("anim.handsup", true)
addEventHandler("anim.handsup", root, anim.handsup)

addEvent("anim.handsup2", true )
addEventHandler("anim.handsup2", root,
    function()
	setPedAnimation(source, "GHANDS", "gsign1", 0, true, false, false)
	setTimer ( setPedAnimationProgress, 100, 1, source, "gsign1", 1.16)
	setTimer ( setPedAnimationSpeed, 1500, 1, source, "gsign1", 0)
	
    end
)

addEvent("anim.handsup2off", true )
addEventHandler("anim.handsup2off", root,
    function()
		setTimer ( setPedAnimation, 100, 1, source,  "GHANDS", "gsign1", 5000, false, false, false)
		setTimer ( setPedAnimation, 250, 1, source, nil)
		
    end
)

function anim.smile()
	setPedAnimation( source, "CASINO", "manwind", -1, false, false, true, false )
end
addEvent("anim.smile", true)
addEventHandler("anim.smile", root, anim.smile)

function anim.cancel()
	setPedAnimation(source)
end
addEvent("anim.cancel", true)
addEventHandler("anim.cancel", root, anim.cancel)

function anim.downn()
	setPedAnimation( source, "ped", "cower", -1, true, false, false, false)
end
addEvent("anim.downn", true)
addEventHandler("anim.downn", root, anim.downn)

function anim.police1()
	setPedAnimation( source, "POLICE", "CopTraf_Stop", -1, true, false, true, false)
end
addEvent("anim.police1", true)
addEventHandler("anim.police1", root, anim.police1)

function anim.police2()
	setPedAnimation( source, "POLICE", "CopTraf_Come", -1, true, false, false, false)
end
addEvent("anim.police2", true)
addEventHandler("anim.police2", root, anim.police2)

function anim.policefwd()
	setPedAnimation( source, "POLICE", "Cop_move_FWD", -1, true, true, true, false)
end
addEvent("anim.policefwd", true)
addEventHandler("anim.policefwd", root, anim.policefwd)

-- تمارين

function anim.fight1()
	setPedAnimation( source, "Fight_B", "FightB_IDLE", -1, true, false, false, false)
end
addEvent("anim.fight1", true)
addEventHandler("anim.fight1", root, anim.fight1)

function anim.fight2()
	setPedAnimation( source, "Fight_C", "FightC_IDLE", -1, true, false, false, false)
end
addEvent("anim.fight2", true)
addEventHandler("anim.fight2", root, anim.fight2)

function anim.fight3()
	setPedAnimation( source, "Fight_B", "FightB_1", -1, true, false, false, false)
end
addEvent("anim.fight3", true)
addEventHandler("anim.fight3", root, anim.fight3)

function anim.fight4()
	setPedAnimation( source, "Fight_B", "FightB_2", -1, true, false, false, false)
end
addEvent("anim.fight4", true)
addEventHandler("anim.fight4", root, anim.fight4)

function anim.fight5()
	setPedAnimation( source, "Fight_B", "FightB_3", -1, true, false, false, false)
end
addEvent("anim.fight5", true)
addEventHandler("anim.fight5", root, anim.fight5)

function anim.fight6()
	setPedAnimation( source, "Fight_C", "FightC_1", -1, true, false, false, false)
end
addEvent("anim.fight6", true)
addEventHandler("anim.fight6", root, anim.fight6)

function anim.fight7()
	setPedAnimation( source, "Fight_C", "FightC_2", -1, true, false, false, false)
end
addEvent("anim.fight7", true)
addEventHandler("anim.fight7", root, anim.fight7)

function anim.fight8()
	setPedAnimation( source, "Fight_C", "FightC_3", -1, true, false, false, false)
end
addEvent("anim.fight8", true)
addEventHandler("anim.fight8", root, anim.fight8)

function anim.fight9()
	setPedAnimation( source, "Fight_C", "FightC_M", -1, false, false, false, false)
end
addEvent("anim.fight9", true)
addEventHandler("anim.fight9", root, anim.fight9)


--[[Fight_B
FightB_IDLE
FightB_1
FightB_2
FightB_3
Fight_C
FightC_IDLE
FightC_1
FightC_2
FightC_3
FightC_M]]--




