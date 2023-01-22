Mod = {
        sum = function (x,y)
            return  x + y 
        end
}

function Mod.sayHello(name)
    print("Hello, " .. name)
end

return Mod

-- in main.lua

local mod = require("custom") -- for file custom.lua

mod.sum -- will work

