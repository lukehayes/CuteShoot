require('fw.ecs.components')

require('fw.ecs.system')

local tt = {}

local entts = {1,2}


components = {
    position = {},
    color    = {}
}

addComponent('position', 1, PositionComp(300,400))
addComponent('color',    1, ColorComp(0,0,1,1))

addComponent('position', 2, PositionComp(100,400))
addComponent('color',    2, ColorComp(1,0,0,1))


function love.load()
end

function love.update(dt)
end

function love.draw()
    systemDraw(entities)
end


