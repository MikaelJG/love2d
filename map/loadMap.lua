function loadMap(mapName, destX, destY)
    destroyAll()
    loadedMap = mapName
    gameMap = sti("maps/" .. mapName .. ".lua")

    if gameMap.layers["Platforms"] then
        -- hash like? or array-like?
        for i, obj in pairs(gameMap.layers["Platforms"].objects) do
      --      spawnPlatform(obj.x, obj.y, obj.width, obj.height, getPlay??
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
            -- ..

