function love.load()
    jack = {
        x = 0,
        y = 0,
        sprite = love.graphics.newImage("sprites/spritesheet.png"),
        animation = {
            direction = "right",
            idle = true,
            frame = 1,
            max_frames = 8,
            speed = 20, 
            timer = 0.1,
            

        }
    }
end

function love.update(dt)
    if not jack.animation.idle then
        jack.animation.timer = jack.animation.time + dt

        if jack.animation.timer > 0.2 then
            jack.animation.timer = 0.1
            
            jack.animation.frame = jack.animation.frame + 1

            if jack.animation.frame = > jack.animation.max_frames then

    
