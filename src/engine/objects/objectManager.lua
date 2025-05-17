local CHEObjectManager = {
    objects = {},
    debugMode = true,
}

require("modules.objects")

function CHEObjectManager:newObject(obj)
    table.insert(self.objects, obj)
end

function CHEObjectManager:update(dt)
    for index, Object in ipairs(self.objects) do
        print(index)
        if Object.update then Object:update(dt) end
    end
end

function CHEObjectManager:draw()
    for index, Object in ipairs(self.objects) do
        Object:draw()
        if self.debugMode then Object:drawDebug() end
    end
end

return CHEObjectManager