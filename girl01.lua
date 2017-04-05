local sodapop = require "modules/sodapop"

girl01 = {}

girl01.speed = 0
girl01.size = 0
girl01.posX = 0
girl01.posY = 0

function girl01.load()
spritesheet = love.graphics.newImage("/assets/Image/Girl01.png")
girl01.speed = 1
girl01.size = 64
girl01.posX = 384
girl01.posY = 956
girl01Char = sodapop.newAnimatedSprite()

girl01Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = girl01.size,
 frameHeight = girl01.size,
 frames = {
   {1, 6, 3, 6, .4}
 }
})

girl01Char.x, girl01Char.y = girl01.posX, girl01.posY
end

function girl01.update(dt)
girl01Char:switch('idle', true)
girl01Char:update(dt)
end

function girl01.draw()
girl01Char:draw()
end

return girl01
