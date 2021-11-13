-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>------
----------------------------------- Whistle Script developed by Developer & .Dev -------- ---------------------------
----------------------------------- If you want more mods of this style -------- ------------------------------------
--------------------------------------- contact us at discod ----- --------------------------------------------------
--------------------------------------- Developer#6617 or .Dev#1793 -- ----------------------------------------------
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>------
---------------------------------------------- @.Dev 'Scripts -------------------------------------------------------
------------------------------------ @New Dreams RolePlay [CLOSED BETA] ---------------------------------------------
------------------------------------------------- -------------------------------------------------------------------
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>------
----------------------------------------------- VERSION 1.5 ---------------------------------------------------------
--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< <<<<<<<--


local segundos = 4 -- 
local tecla = "n" -- مفتاح التصفير


local assobio = {
  tick = {},
  tempo = {},
  doing = {},
};



function Assobiar(player)
  if not isPedOnGround (player) then return end -- if the player is not on the ground, the function DOES NOT RUN!
  if isPedInVehicle(player) then return end -- if the player is in a vehicle, the function DOES NOT RUN!
  if getTickCount() - (assobio.tick[player] or 0) >= segundos * 1000 then -- if the time is greater than seconds then:
    if assobio.doing[player] == false or assobio.doing[player] == nil then
      controls(player, false)
      setPedAnimation(player, "food", "eat_burger", -1, false, false, false, false) -- animation 1
      setTimer(setPedAnimationProgress, 800, 1, player, "eat_burger", 1)  -- some animation config (recommend not messing around!)
      assobio.doing[player] = true
      assobio.tick[player] = getTickCount()
      local cx, cy, cz = getElementPosition(player)
      triggerClientEvent(getRootElement(), "devs_Assobio", player, cx, cy, cz) -- enable whistle sound (client.lua file)
      assobio.tempo[player] = setTimer(function() -- time starts for animation 2
        setPedAnimation(player, "ghands", "gsign2lh", -1, false, false, false, false) -- animation 2
        setTimer(function() -- starts the time to end the whistle
          cancelAnimn(player) -- whistle-ending function
          controls(player, true)
        end, 1000, 1) -- animation time 2
      end, 1000, 1)  -- animation time 1
    end
  end
end 





function cancelAnimn(player)
--setPedAnimation(player) -- if there is a bug, remove the two dashes in front!
   --setPedWalkingStyle(player, 0) -- if there are any bugs, remove the two dashes in front!
  assobio.doing[player] = false
  if isTimer (assobio.tempo[player]) then killTimer (assobio.tempo[player]) assobio.tempo[player] = nil end
end

function Res()
  for _, player in ipairs(getElementsByType("player")) do
    assobio.tick[player] = 4
    assobio.doing[player] = false
    bindKey(player, tecla, "down", Assobiar)
  end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), Res)


function Join()
  for _, player in ipairs(getElementsByType("player")) do
    assobio.tick[player] = 4
    assobio.doing[player] = false
    bindKey(player, tecla, "down", Assobiar)
  end
end
addEventHandler("onPlayerJoin", getRootElement(), Join)

function Clean()
  for _, player in ipairs(getElementsByType("player")) do
    unbindKey(player, tecla, "down", Assobiar)
    if isTimer (assobio.tempo[player]) then killTimer (assobio.tempo[player]) end
      if assobio.doing[player] then
        destroyElement(assobio.doing[player] )
        assobio.doing[player] = nil
        assobio.tick[player] = nil
      end
  end
end
addEventHandler("onResourceStop", getResourceRootElement(getThisResource()), Clean)


function Wasted()
  for _, player in ipairs(getElementsByType("player")) do
    if isTimer (assobio.tempo[player]) then killTimer (assobio.tempo[player]) end
      if assobio.doing[player] then
        destroyElement(assobio.doing[player] )
        assobio.doing[player] = nil
        assobio.tick[player] = 4
      end
  end
end
addEventHandler("onPlayerWasted", getRootElement(), Wasted)

function controls(player, state)
  if state == false then
    toggleControl ( player, "jump", false )
  elseif state == true then
    toggleControl ( player, "jump", true )
  end
end
