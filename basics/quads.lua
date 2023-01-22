    -- fancy way to set var
    sprite_width, sprite_height = 5352, 570

    -- sprites are divided in quadrents, divide sprites
    quad_width = 669
    quad_height = sprite_height

    love.graphics.newQuad(0, 0, quad_width, quad_height, sprite_width, sprite_height)

    quads = {}
    -- if 8 image for sprite
    for i = 1, 8 do
        quads[i] = love.graphics.newQuad(quad_width * (i - 1), 0, quad_width, quad_height, sprite_width, sprite_height)
    end
--

function love.draw()
    -- rescale sprite image for display
    love.graphics.scale(0.3)

    love.graphics.draw(jack.sprinte, quads[1], jack.x, jack.y)
end
