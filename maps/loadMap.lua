function loadMap(mapName, destX, destY)
    destroyAll()
    loadedMap = mapName
    gameMap = sti("maps/" .. mapName .. ".lua")

    if gameMap.layers["Platforms"] then
        -- hash like? or array-like?
        for i, obj in pairs(gameMap.layers["Platforms"].objects) do
            spawnPlatform(obj.x, obj.y, obj.width, obj.height, getPlatformLines(obj)) 
        end
    end

    if gameMap.layers["Spikes"] then
        for i, obj in pairs(gameMap.layers["Spikes"].objects) do
            spawnSpike(obj.x, obj.y, obj.width, obj.height, obj.type)
         end
    end

    if gameMap.layers["Chekpoints"] then
        for i, obj in pairs(gameMap.layers["Checkpoints"].objects) do
            if obj.type == "finish" then
                setFinish(obj.x, obj.y)
            else
                spawnCheckpoint(obj.x, obj.y, obj.type)
            end    
        end
    end

    if gameMap.layers["Doors"] then
        for i, obj in pairs(gameMap.layers["Doors"].objects) do
            spawnDoor(obj.x, obj.y, obj.name)
        end
    end

    if gameMap.layers["Signs"] then
        for i, obj in pairs(gameMap.layers["Signs"].objects) do
            spawnSign(obj.x, obj.y, obj.name)
        end
    end

    if gameMap.layers["Enemy"] then
        for i, obj in pairs(gameMap.layers["Enemy"].objects) do
            -- ..
    if gameMap.layers["Boxes"] then
        for i, obj in pairs(gameMap.layers["Boxes"].objects) do
            -- ..
-- IN PROJECT

-- src > levels > loadMap.lua
