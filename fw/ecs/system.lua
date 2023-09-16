--[[============================================================================
-- All systems are defined in here.
==============================================================================]]

function systemDraw(entities)

    for i=1, #entities,1 do
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

function systemMove(entities, delta)
    for i=1, #entities,1 do
        pos = hasComponent(entities, i, "position")
        pos.x = pos.x + 100 * delta;
    end
end
