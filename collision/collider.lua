--A collider is any physics object in a world

-- a collider has a body, a fixture and a shape

player.collider = world:newCircleCollider(0,0, 40)

-- 0, 0 is its position, on origin.
-- 40 is the radius of the circle

-- update the world 
world:update(dt)
-- to see the created world, draw it
-- draws the white circle of collider
world:draw()


