--[[============================================================================
-- All components are defined in here.
==============================================================================]]

local util = require('fw.util.Util')

_G.components = {
    position = {},
    color    = {}
}

function PositionComp(x,y)
    return {x=x, y=y, name="Position"}
end

function ColorComp(r,g,b,a)
    return {r=r,g=g,b=b,a=a, name="Color"}
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


function hasComponent(componentList, entity, component)

    util.isString(component)

    local components = _G.components[component]
    local componentExists = components[entity]
    return componentExists
end
