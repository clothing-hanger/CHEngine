local CHE = {}

function CHE:init()
    CHEObjectManager = require("engine/objects/objectManager")
end

function CHE:update(dt)
    CHEObjectManager:update(dt)
    --print("CHE:update")
end

function CHE:draw()
    CHEObjectManager:draw()
    --print("CHE:draw")
end

return CHE