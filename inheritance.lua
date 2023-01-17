local function Pet(name)
    return {
        name = "Charlie" or name -- default name if no value given as argument

        speak = function ()
            print ("Meaw")
        end,

        feed = function (self)
            print("eating", self.name)

            -- you can call another function as well
            -- calling speak method from feed method

            self:speak()
        end
    }
end

local function Dog(name)
    local dog = Pet(name)
    
    -- now you can add new class elements

    dog.breed = "doberman"
    dog.loyalty = 0

    return dog
end

local doberman = Dog("Jesse")
print(doberman.name, doberman.breed)
