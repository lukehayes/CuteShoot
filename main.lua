require('fw.ecs.components')
require('fw.ecs.system')

local entities = {1,2,3}

addPositionComponent(1, PositionComponent(300,200))
addColorComponent(   1, ColorComponent(0,0,1,1))

addPositionComponent(2, PositionComponent(400,400))
addColorComponent(   2, ColorComponent(1,0,1,1))


addPositionComponent(3, PositionComponent(600,200))
addColorComponent(   3, ColorComponent(0,1,0,1))
addTimerComponent(   3, TimerComponent(3, true, function() end))

function love.load()
end

function love.update(dt)
    systemMove(entities,dt)
end

function love.draw()
    systemDraw(entities)
end


