_G.love = require("love")

function love.load()
    love.fraphics.setBarckgroundColor(0.5, 0.5, 1)

    _G.pacman = {}
    pacman.x = 200
    pacman.y = 250
    pacman.eat = true

    _G.food = {
        x = 600
        eaten = false
    }
end

function love.update(dt)
    pacman.x = pacman.x + 1

    if pacman.x >= food_x + 20 then
        _G.food_eaten = true
    end
end
    
function love.draw()
    if not food.eaten then
        love.graphics.setColor(0, 0, 0)

    -- if pacman hasn't eaten it, the food x position is here
        love.graphics.rectangle("fill", food_x, 200, 70, 70)
    end
end

