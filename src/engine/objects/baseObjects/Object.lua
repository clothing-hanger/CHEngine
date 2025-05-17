Object = {}
Object.__index = Object

function Object:new(n,x,y,w,h)
    local self = setmetatable({}, Object)
    self.name = n or "Object"
    self.x = x or 0
    self.y = y or 0
    self.w = w or 0
    self.h = h or 0


    self.debug = false
    return self
end

function Object:update(dt)
end

function Object:draw()
end

function Object:drawDebug()
    if self.debug then
        love.graphics.setColor(1, 0, 0, 1)
        love.graphics.rectangle("line", self.x, self.y, self.w, self.h)
        love.graphics.setColor(1, 1, 1, 1)
    end
end