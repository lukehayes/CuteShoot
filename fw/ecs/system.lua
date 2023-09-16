--[[============================================================================
-- All systems are defined in here.
==============================================================================]]

function systemDraw(entities)

    for i=1, #entities,1 do
        pos = hasComponent(components, i, "position")
        color = hasComponent(components, i, "color")

        if(color) then
            love.graphics.setColor(color.r, color.g, color.b, color.a)
            love.graphics.rectangle("fill", pos.x, pos.y,100,100)
        else
            love.graphics.setColor(1,0,1,1)
            love.graphics.rectangle("fill", pos.x, pos.y,100,100)
        end
    end
end

function systemMove(entities, delta)
    for i=1, #entities,1 do
        pos = hasComponent(entities, i, "position")

        if(pos) then
            pos.x = pos.x + 100 * delta;
            pos.y = pos.y + 100 * delta;
        end
    end
end

function systemTimer(entities, delta)
    for i=1, #entities,1 do
        timer = hasComponent(entities, i, "timer")
        color = hasComponent(entities, i, "color")

        if(timer) then
            timer.time = timer.time - delta

            if timer.time <=0 then
                color.r = 1
                color.g = 0
                color.b = 0
                color.a = 1
            end
        end
    end
end
