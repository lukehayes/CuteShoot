--[[============================================================================
-- All components are defined in here.
==============================================================================]]

local util = require('fw.util.Util')

function PositionComp(x,y)
    return {x=x, y=y, name="Position"}
end

function ColorComp(id, r,g,b,a)
    return {r=r,g=g,b=b,a=a, name="Color"}
end

--[[============================================================================
-- Utility Functions
==============================================================================]]

function hasComponent(componentList, entity, component)

    util.isString(component)

    local components = componentList[component]
    local componentExists = components[entity]
    return componentExists
end
