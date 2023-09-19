require('fw.ecs.components')
require('fw.ecs.system')

local entities = {1,2}

addTransformComponent(1, TransformComponent(400,400))
addColorComponent(1, ColorComponent(0,0,1,1))

addTransformComponent(2, TransformComponent(300,200))
addColorComponent(2, ColorComponent(0,1,0,1))
addVelocityComponent(2, VelocityComponent(-1,1,10))

function genEntities(count)
    for i = 1,count,1 do

        local rr = love.math.random(0.6,1)
        local rg = love.math.random(0.6,1)
        local rb = love.math.random(0.7,1)
        local ra = love.math.random(0,1)

        local rx = love.math.random(10,800)
        local ry = love.math.random(10,800)
        local rdx = love.math.random(-1,1)
        local rdy = love.math.random(-1,1)
        local rs = love.math.random(10,80)

        addTransformComponent(i, TransformComponent(rx,ry))
        addColorComponent(i, ColorComponent(rr,rg,rb,ra))
        addVelocityComponent(i, VelocityComponent(rdx,rdy, rs))

        table.insert(entities,i)
    end
end


function love.load()

    genEntities(1000)

end

function love.update(dt)
    systemMove(entities,dt)
end

function love.draw()
    systemDraw(entities)
end


