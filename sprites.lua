_G.love = require("love")

function love.load()
    jack = {
        x = 0,
        y = 0
        sprite = love.graphics.newImage("sprites/spritesheet.png")
    }

    -- write image size. ex 5300x570 pixels
    -- fancy way to set var
    sprite_width, sprite_height = 5352, 570

    -- sprites are divided in quadrents, divide sprites
    quad_width = 669
    quad_height = sprite_height

    love.graphics.newQuad(0, 0, quad_width, quad_height, sprite_width, sprite_height)

    
end

function love.load()

end

function love.load()

end
