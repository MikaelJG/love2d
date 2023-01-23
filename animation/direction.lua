-- set the animation to the right direction. 
-- facing the right way

player.anim = player.animations.walkDown
player.anim = player.animations.walkUp
player.anim = player.animations.walkLeft
player.anim = player.animations.walkRight

if love.keyboard.isDown("down") then
    player.y = player.y + 5
    player.anim = player.animations.walkDown
end

if love.keyboard.isDown("up") then
    player.y = player.y + 5
    player.anim = player.animations.walkUp
end

if love.keyboard.isDown("right") then
    player.y = player.y + 5
    player.anim = player.animations.walkRight
end

if love.keyboard.isDown("left") then
    player.y = player.y + 5
    player.anim = player.animations.walkLeft
end

-- plus, pause animation when the player is not moving

-- record the player's previous position -- local previousX = player.x
-- and check if it is different from current position -- has it moved?

local previousX = player.x
local previousY = player.y

if previousX ~= player.x or previousY ~= player.y then
    player.isMoving = true
else
    player.isMoving = false
end

if player.isMoving then
    player.anim:update(dt)
end

