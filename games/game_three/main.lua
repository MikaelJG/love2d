function love.load()
    -- executes exactly when the game begins

    target = {}
    target.x = 300 
    target.y = 300 
    target.radius = 50
    -- usually target.size

    score = 0
    score = 0

    -- change font size
    -- option to have custom fonts as well in .ttf or .otf
    gameFont = love.graphics.newFont(40)
end

function love.update(dt)
end

function love.draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(1, 1, 1)
    love.graphics.print(score, 0, 0)

    love.graphics.setFont(gameFont)
end

-- we want to know when mouse was pressed
function love.mousepressed( x, y, button, istouch, presses )
    -- button will tell us if left or write
    -- istouch, presses is just mobile

    -- 1 is the primary button, left mouse click
    if button == 1 then
        score = score + 1 
    end
    
    -- 2 is the primary button, left mouse click
    if button == 2 then
        score = score + 2
    end
    
end
