function love.load()
    target = {}
    target.x = 300 
    target.y = 300 
    target.radius = 50
    score = 0
    gameFont = love.graphics.newFont(40)
end

function love.update(dt)
    if target.x + target.radius > love.graphics.getWidth() then
        target.x = love.graphics.getWidth() - target.radius
    end
    if target.y + target.radius > love.graphics.getHeight() then
        target.y = love.graphics.getHeight() - target.radius
    end

        target.x = target.x + 1
        target.y = target.y + 1
        --target.x = target.x
end

function love.draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", target.x, target.y, target.radius)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print(score, 0, 0)
    love.graphics.setFont(gameFont)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 1
        -- generate a random value
        -- we are moving a shape, so consider the screen dimension
        -- getWidth will get the screen dim 
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
        end
    end
    if button == 2 then
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 2 
        end
    end
end
function distanceBetween(x1, y1, x2, y2)
    return math.sqrt( (x2 - x1)^2 + (y2 - y1)^2 )
end