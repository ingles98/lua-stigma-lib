-- My lib lmao i am tired of rewriting or copy-pasting shit on different projects
local lib = {}
if love then
    lib.love = require 'Lib/lua-stigma-lib/love2d_utilities'
end
-- GENERAL

lib.pick = function (...) -- Picks an element from the table
	local arg = {...}
    if #arg == 0 then return end
    local rng = math.random(#arg)
    for k,v in ipairs(arg) do
        if k == rng then return v end
    end
end

lib.enqueue = function(tbl, object, skipchecks)
    skipchecks = skipchecks or true
    if not skipchecks then
        for k,v in ipairs(tbl) do
            if k == object then
                return "Error enqueuing the object \'"..tostring(object).."\' to the table \'"..tostring(tbl).."\'. There is already the same object queued"
            end
        end
    end
    table.insert(tbl, object)
end

lib.dequeue = function (tbl, object)
    for k,v in ipairs(tbl) do
        if v == object then
            table.remove(tbl, k)
            return true
        end
    end
    return false

    --if table.remove(tbl, object) then return true end
end

return lib
