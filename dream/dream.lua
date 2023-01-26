-- look at luaFilesystem

-- local lfs = require"lfs"

-- get arguments
-- a name should be given.
local name = arg[1]
local second_arg = arg[2]

function createFiles ()
     -- current_dir= -- find current dir with lfs
     -- print(current_dir)

     -- in current directory mkdir this 
     --local folderCreate = "mkdir components objects states"

     -- in current dir touch these
     local fileCreate = string.format("touch conf.lua main.lua globals.lua %s/components/Button.lua %s/components/Text.lua %s/objects/Player.lua %s/states/Game.lua %s/objects/Menu.lua", current_dir, current_dir, current_dir, current_dir, current_dir)
     print(fileCreate)
     --os.execute(folderCreate)
     --os.execute(fileCreate)
end
function writeFiles ()
    local p = io.popen('find ~/code/love/dream/sh_writers -type f')
    for file in p:lines() do                         --Loop through all files
        runSh = file       
        os.execute(runSh)
    end
end

createFiles()
-- writeFiles()
