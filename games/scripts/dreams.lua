-- get arguments
-- a name should be given.
local name = arg[1]
local second_arg = arg[2]

local folderCreate = "mkdir components objects states"
local fileCreate = "touch conf.lua main.lua globals.lua ./components/Button.lua ./components/Test.lua ./objects/Player.lua ./states/Game.lua ./objects/Menu.lua"

os.execute(folderCreate)
os.execute(fileCreate)

-- conf.lua
-- looks like this

        -- local love = require "love"
        -- 
        -- function love.conf(app)
        --     app.window.width = 1280
        --     app.window.height = 720
        --     app.window.title = argument_two
        -- end



