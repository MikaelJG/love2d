-- get arguments
-- a name should be given.
local name = arg[1]
local second_arg = arg[2]

local folderCreate = "mkdir components objects states"
local fileCreate = "touch conf.lua main.lua globals.lua ./components/Button.lua ./components/Text.lua ./objects/Player.lua ./states/Game.lua ./objects/Menu.lua"

os.execute(folderCreate)
os.execute(fileCreate)

function dirLookup(dir)
   local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
      for file in p:lines() do                         --Loop through all files
        print(file)       
      end
end


-- conf.lua
-- looks like this

        -- local love = require "love"
        -- 
        -- function love.conf(app)
        --     app.window.width = 1280
        --     app.window.height = 720
        --     app.window.title = argument_two
        -- end



