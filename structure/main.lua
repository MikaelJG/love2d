function love.load()
    -- specify everything the game starts officially
    -- declare all variables 
end

function love.update(dt)
    -- love.update always take delta time (dt)
    -- a game loop
    -- alter variables here
end

function love.draw()

    love.graphics.rectangle("fill", 200, 400, 200, 100)
    love.graphics.circle("fill", 0, 0, 200, 100)
    
    -- mode of rectangle (filled or outline)
    -- coordinates at his up left corner rectangle (200, 400)
    -- coordinates at his center for circle  (0, 0)
    -- width and height (200, 100)

    -- color with RGB (red, green, blue)
    love.graphics.setColor(0.5, 0.4, 0.1)
    -- 0 = none of that color
    -- 1 = as much as possible



end
