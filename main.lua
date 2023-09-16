require('fw.ecs.components')

require('fw.ecs.system')

local tt = {}
local entities = {1,2,3}

addPositionComponent(1, PositionComp(300,200))
addColorComponent(   1, ColorComp(0,0,1,1))

addPositionComponent(2, PositionComp(400,400))
addColorComponent(   2, ColorComp(1,0,1,1))


addPositionComponent(3, PositionComp(600,200))
addColorComponent(   3, ColorComp(0,1,0,1))
addTimerComponent(   3, TimerComp(3, true, function() end))

function love.load()
end

function love.update(dt)
end

function love.draw()
    systemDraw(entities)
end


