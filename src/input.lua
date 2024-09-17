local InputModule = {}

function InputModule:GetBindActive(bind)
    if love.keyboard.isDown(self.input[bind]) then
        return true
    end
    return false
end

function InputModule.new()
    local input = setmetatable({}, InputModule)

    input.keybinds = {
        movement = {
                left = {
                    primary = 'a',
                    secondary = 'left'
                },
                right = {
                    primary = 'd',
                    secondary = 'right'
                },
                crouch = {
                    primary = 's',
                    secondary = 'shift'
                },
                jump = {
                    primary = 'w',
                    secondary = 'space'
                },
        },
        action = {
            attackPrimary = {
                primary = 'h',
                secondary = 'z'
            },
            attackSecondary = {
                primary = 'j',
                secondary = 'x'
            },
            defend = {
                primary = 'k',
                secondary = 'c'
            },
            tpAction = {
                primary = 'l',
                secondary = 'v'
            },
        },
        menu = {
            left = {
                primary = 'a',
                secoandary = 'left'
            },
            right = {
                primary = 'd',
                secondary = 'right'
            },
            up = {
                primary = 'w',
                secondary = 'up'
            },
            down = {
                primary = 's',
                secondary = 'down'
            },
            select = {
                primary = 'enter',
                secondary = 'z'
            }
        },
    }
    return input
end

return InputModule
