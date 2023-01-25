-- get arguments
-- -- a name should be given.
-- local name = arg[1]
-- local second_arg = arg[2]
-- 
-- local folderCreate = "mkdir components objects states"
-- local fileCreate = "touch conf.lua main.lua globals.lua ./components/Button.lua ./components/Text.lua ./objects/Player.lua ./states/Game.lua ./objects/Menu.lua"
-- 
-- os.execute(folderCreate)
-- os.execute(fileCreate)

-- find .sh files, if we have to

local p = io.popen('find ./sh_writers -type f')
for file in p:lines() do                         --Loop through all files
    print(file)       
end

-- function dirLookup(dir)
--    local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
--       for file in p:lines() do                         --Loop through all files
--         print(file)       
--       end
-- end
-- 
-- dirLookup(sh_writers)
-- dirLookup(code)
