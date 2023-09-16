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

function hasComponent(componentList, entity, component)

    util.isString(component)

    local components = _G.components[component]
    local componentExists = components[entity]
    return componentExists
end
