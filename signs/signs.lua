signs = {}

function spawnSign(x, y, id)
    local sign = {}
    sign.x = x
    sign.y = y
    sign.id = id
    sign.width = 16
    sign.height = 16

    -- woah, this replaces a directory?
    -- src > sprites > environment > sign
    sign.sprite = sprites.environment.sign

    -- the id is essential, you will show the right text on sign, based on id
    -- very close to a database in this sense!

    sign.messageSprite = sprites.messages[id]

    sign.physics = world:newRectangleCollider(sign.x, sign.y, sign.width, sign.height)
    sign.physics.parent = sign
    sign.physics:setCollissionClass("Interact")
    sign.physics:setType('static')

    sign.iconX = sign.physics:getX()
    sign.iconY = sign.physics:getY() - 20





