require('fw.ecs.components')

require('fw.ecs.system')

local tt = {}

local entts = {1,2}


components = {
    position = {},
    color    = {}
}

table.insert(components.position, 1, PositionComp(100,100))
table.insert(components.position, 2, PositionComp(300,100))
table.insert(components.color, 2, ColorComp(0,1,0,1))


print(#components.position)
print(#components.color)


function love.load()
end

function love.update(dt)
end

function love.draw()
    systemDraw(entities)
end


