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
