local Logger = {}

function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k,v in pairs(o) do
            if type(k) ~= 'number' then k = '"'..k..'"' end
            s = s .. '['..k..'] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

function Logger.warn(...)
    local args = table.pack(...)
    local parts = {}

    for i = 1, args.n do
        parts[#parts + 1] = dump(args[i])
    end

    local msg = "[WARN] - " .. table.concat(parts, ": ") .. "\n"
    Isaac.DebugString(msg)
end

function Logger.debug(...)
    local args = table.pack(...)
    local parts = {}

    for i = 1, args.n do
        parts[#parts + 1] = dump(args[i])
    end

    local msg = "[DEBUG] - " .. table.concat(parts, ": ") .. "\n"
    Isaac.DebugString(msg)
end

return Logger

