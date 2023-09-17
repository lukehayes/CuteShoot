--[[============================================================================
-- All systems are defined in here.
==============================================================================]]

--[[============================================================================
-- Draw System
==============================================================================]]
function systemDraw(entities)

    for i=1, #entities,1 do
        transform = hasComponent(components, i, "transform")
        color = hasComponent(components, i, "color")

        if(color) then
            love.graphics.setColor(color.r, color.g, color.b, color.a)
            love.graphics.rectangle("fill", transform.x, transform.y,transform.w,transform.h)
        else
            love.graphics.setColor(1,0,1,1)
            love.graphics.rectangle("fill", transform.x, transform.y,50,50)
        end
    end
end

--[[============================================================================
-- Move System
==============================================================================]]
function systemMove(entities, delta)
    for i=1, #entities,1 do
        transform = hasComponent(entities, i, "transform")

        if(transform) then
            transform.x = transform.x + 100 * delta;
            transform.y = transform.y + 100 * delta;
        end
    end
end

--[[============================================================================
-- Timer System
==============================================================================]]
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
