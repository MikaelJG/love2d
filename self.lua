local function Pet(name)
    return {
        name = "Charlie" or name

        speak = function ()
            print ("Meaw")
        end,

        feed = function (self)
            print("eating", self.name)

            -- you can call another function as well
            -- calling speak method from feed method

            self:speak()
        end
    } -- return a table
end

-- you can call

cat.speak()

-- you can't call

dog.feed()

-- you need : 

dog:feed()
