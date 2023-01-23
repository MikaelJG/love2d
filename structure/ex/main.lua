function love.load()
    -- specify everything the game starts officially
    -- declare all variables 
    number = 0
end

function love.update(dt)
    -- love.update always take delta time (dt)
    -- a game loop
    -- alter variables here

    number = number + 1

end

function love.draw()
    -- based on altered variable, draw
    -- draw graphics to the screen
    -- graphics and images, no variables setting

    love.graphics.print(number)
end
