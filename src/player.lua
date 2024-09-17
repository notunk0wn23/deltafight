local PlayerModule = {}

function PlayerModule:Update()

end

function PlayerModule.new()
    local player = setmetatable({}, PlayerModule)

    player.x = love.graphics.getWidth() / 2
    player.y = love.graphics.getHeight() / 2

    player.speed = 200

    player.img = love.graphics.newImage('assets/sprites/party/kris/dark/walk/down_1.png')

    player.ground = player.y

    player.y_velocity = -1

    player.jump_height = -750
    player.gravity = -5000

    return player
end

return PlayerModule
