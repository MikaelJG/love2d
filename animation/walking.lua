-- using anim8 libraray for love2d

-- then

-- there is 8 images for this animation 1-8, on row 1 ('1-8', 1)
-- (walkGrid... 0.5) is the time between each frame (0.5 seconds between each frames)
-- 0.5 is slow. 0.1 should be better

-- first row is animation down
anim8.newAnimation(walkGrid('1-8', 1), 0.5)

-- second row is animation left
anim8.newAnimation(walkGrid('1-8', 2), 0.5)

-- third row is animation up 
anim8.newAnimation(walkGrid('1-8', 3), 0.5)

-- right is left flipped horizontally

-- in update function
player.animations.walkDown:update(dt)

player.animations.walkDown:draw(
    -- linkWalkSheet var is set in sprites?
    sprites.linkWalkSheet, player.x, player.y

)

