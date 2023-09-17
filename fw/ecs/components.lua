--[[============================================================================
-- All components are defined in here.
==============================================================================]]

local util = require('fw.util.Util')

_G.components = {
    position = {},
    color    = {},
    timer    = {}
}

function PositionComponent(x,y)
    return {x=x, y=y, name="Position"}
end

function ColorComponent(r,g,b,a)
    return {r=r,g=g,b=b,a=a, name="Color"}
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

function addPositionComponent(entity, component)
    addComponent('position', entity, component)
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
