require('fw.ecs.components')


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


--function systemMove(delta)
    --for i=1, #entts,1 do
        --pos = hasComponent(i, "position")

        --pos.x = pos.x + 100 * delta;
    --end
--end

function systemDraw()
    for i=1, #entts,1 do
        pos = hasComponent(components, i, "position")
        color = hasComponent(components, i, "color")

        if(color) then
            love.graphics.setColor(color.r, color.g, color.b, color.a)
            love.graphics.rectangle("fill", pos.x, pos.y,10,10)
        else
            love.graphics.setColor(1,0,1,1)
            love.graphics.rectangle("fill", pos.x, pos.y,10,10)
        end
    end
end


--function love.load()
--end

function love.update(dt)
    --systemMove(dt)
end

function love.draw()
    systemDraw()
end


