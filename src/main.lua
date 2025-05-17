
function love.load()
    CHE = require("engine.CHE")
    CHE:init()

    CHEObjectManager:newObject(testObject:new(100,100,50,50))
end

function love.update(dt)
    CHE:update(dt)
end

function love.draw()
    CHE:draw()
end


