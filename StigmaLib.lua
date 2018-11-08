-- My lib lmao i am tired of rewriting or copy-pasting shit on different projects

local lib = {}
-- GENERAL

lib.pick = function (...) -- Picks an element from the table
    if #arg == 0 then return end
    local rng = math.random(#arg)
    for k,v in ipairs(arg) do
        if k == rng then return v end
    end
end


return lib