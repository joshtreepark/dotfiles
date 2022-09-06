local function fn(file) return require('functions.' .. file) end

local M = {
    utilities  = fn('utils'),
}

return M

