--[[============================================================================
-- All components are defined in here.
==============================================================================]]

local util = require('fw.util.Util')

_G.components = {
    transform = {},
    velocity  = {},
    color     = {},
    timer     = {}
}

function TransformComponent(x,y,w,h)
    w = w or 50
    h = h or 50
    return {x=x, y=y, w=w, h=h}
end

function VelocityComponent(dx,dy, speed)
    dx = dx or 50
    dy = dy or 50
    speed = speed or 10
    return {dx=dx, dy=dy,speed=speed}
end

function ColorComponent(r,g,b,a)
    return {r=r,g=g,b=b,a=a}
end

function TimerComponent(time, oneshot)
    return {time=time, oneshot=oneshot}
end

--[[============================================================================
-- Utility Functions
==============================================================================]]

-- General add component function
function addComponent(name, entity, component)
    local componentTable = _G.components[name]
    table.insert(componentTable, entity, component)
end

function addTransformComponent(entity, component)
    addComponent('transform', entity, component)
end

function addVelocityComponent(entity, component)
    addComponent('velocity', entity, component)
end

function addColorComponent(entity, component)
    addComponent('color', entity, component)
end

function addTimerComponent(entity, component)
    addComponent('timer', entity, component)
end


function hasComponent(componentList, entity, component)

    util.isString(component)

    local components = _G.components[component]
    local componentExists = components[entity]
    return componentExists
end
