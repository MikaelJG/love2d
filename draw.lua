-- in config file

function love.draw()
    love.graphics.rectangle("fill", 50, 50, 50, 50)
    love.graphics.rectangle("line", 50, 50, 50, 50)
    love.graphics.rectangle("line", 10, 500, 50, 50)
    -- love.graphics.rectangle("#", y , x , width, height)

    --- RGB (red, green, blue system)

    love.graphics.setColor(0, 0, 0)
    love.graphics.setColor(75 / 255, 148 / 255, 10 / 255)

    love.graphics.circle("line", 100, 100, 50)

    love.graphics.setColor(1, 0.7, 0.1)

    -- Pacman shape (cut circle)
    love.graphics.arc("line", 200, 250, 60, 0)

    -- Pacman

    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.arc("line", 200, 250, 60, 1, 5)


    


end

____________ x (axes)
|
|
|
|
|
y
