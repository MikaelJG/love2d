local function Pet(name)
    age = 10 -- age is global. cat.age is possible
    -- local age = 10 -- cat.age is now impossible 

    return {
        name = "Charlie" or name
        daysAlive = age * 365

        speak = function ()
            print ("Meaw")
        end,

    } -- return a table
end

local cat = Pet()
local dog = Pet()

print(car.name)
print(dog.name)

print(cat.age)
print(cat.daysAlive)

