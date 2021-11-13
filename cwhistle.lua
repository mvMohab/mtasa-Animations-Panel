
addEvent("devs_Assobio", true) -- Create a custom event named > WhistleRds
addEventHandler("devs_Assobio", root, -- Add Whistle Rds event to function!
    function(cx, cy, cz)
        local Som = playSound3D('sfx/whistle.mp3', cx, cy, cz) -- sets a variable (Sound) and creates a 3D sound
        setSoundMaxDistance(Som, 95) -- defines the distance of the variable!
        setSoundSpeed(Som, 1.4) -- set the speed of the variable!
    end -- End of Function!
)