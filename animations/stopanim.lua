-- plus, pause animation when the player is not moving

-- record the player's previous position -- local previousX = player.x
-- and check if it is different from current position -- has it moved?

local previousX = player.x
local previousY = player.y

if previousX ~= player.x or previousY ~= player.y then
    player.isMoving = true
else
    player.isMoving = false

    -- if image of player standing is last on spritesheet
    -- when not moving, show standing image (8th)
    player.anim:gotoFrame(8)

end

if player.isMoving then
    player.anim:update(dt)
end


