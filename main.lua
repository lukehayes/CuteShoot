require('fw.ecs.components')
require('fw.ecs.system')

local moonshine = require 'moonshine'

local entities = {1,2}

addTransformComponent(1, TransformComponent(400,400))
addColorComponent(1, ColorComponent(0,0,1,1))

addTransformComponent(2, TransformComponent(300,200))
addColorComponent(2, ColorComponent(0,1,0,1))
addVelocityComponent(2, VelocityComponent(-1,1,10))

function rRange(from,to)
    return love.math.random(from,to)
end

function genEntities(count)
    for i = 1,count,1 do

        local rr  = rRange(0.6,1)
        local rg  = rRange(0.6,1)
        local rb  = rRange(0.7,1)
        local ra  = rRange(0,1)

        local rx  = rRange(10,800)
        local ry  = rRange(10,800)
        local rdx = rRange(-1,1)
        local rdy = rRange(-1,1)
        local rs  = rRange(10,80)

        addTransformComponent(i, TransformComponent(rx,ry))
        addColorComponent(i, ColorComponent(rr,rg,rb,ra))
        addVelocityComponent(i, VelocityComponent(rdx,rdy, rs))

        table.insert(entities,i)
    end
end

local c = 0
function love.load()

    genEntities(1000)
    effect = moonshine(moonshine.effects.glow)
    effect.glow.strength = 0.1
    chain = moonshine.chain(moonshine.effects.glow)
end

function love.update(dt)
    c = c + 0.1
    --systemMove(entities,dt)
end

function love.draw()
    chain.draw(function()
        systemDraw(entities)
    end)
end


