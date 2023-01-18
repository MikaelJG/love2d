-- change pacman's mouth placement with angles

function love.load()
    love.graphics.set
    
    _G.pacman = {}
    pacman.x = 200
    pacman.y = 250
    pacman.angle1 = 1
    pacman.angle2 = 5

    --
function love.update(dt)

    if love.keyboard.isDown("down") then
        -- pacman.x = pacman.x - 1
        pacman.angle1 = pacman.angle1 - 1
        pacman.angle2 = pacman.angle2 - 1

        -- slow down its update
        pacman.angle1 = pacman.angle1 + math.pi * dt
        pacman.angle2 = pacman.angle2 + math.pi * dt
    elseif love.keyboard.isDown("up") then
    --
    end
end

function love.draw()
    if not food.eaten then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", food.x, 200, 70, 70)
    end
        love.graphics.setColor(0, 0, 0)
        love.graphics.arc("fill", pacman.x, pacman.y, 60, pacman.angle1, pacman.angle20)

    


