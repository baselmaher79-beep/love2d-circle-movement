function love.load()
    circle = {
        x = 400,
        y = 300,
        radius = 20,
        speed = 300,
        vx = 0,
        vy = 0
    }
end

function love.update(dt)
    circle.vx = 0
    circle.vy = 0
    
    if love.keyboard.isDown("up") then
        circle.vy = -circle.speed
    end
    
    if love.keyboard.isDown("down") then
        circle.vy = circle.speed
    end
    
    if love.keyboard.isDown("left") then
        circle.vx = -circle.speed
    end
    
    if love.keyboard.isDown("right") then
        circle.vx = circle.speed
    end
    
    circle.x = circle.x + circle.vx * dt
    circle.y = circle.y + circle.vy * dt
end

function love.draw()
    love.graphics.setColor(0.2, 0.8, 1)
    love.graphics.circle("fill", circle.x, circle.y, circle.radius)
end
