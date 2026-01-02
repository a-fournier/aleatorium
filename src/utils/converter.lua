local Converter = {}

function Converter:stringifyKeysDeep(t)
    if type(t) ~= "table" then return t end

    local out = {}
    for k, v in pairs(t) do
        local nk = (type(k) == "number") and tostring(k) or k
        out[nk] = self:stringifyKeysDeep(v)
    end
    return out
end


function Converter:parseIntKeysDeep(t)
    if type(t) ~= "table" then return t end

    local out = {}
    for k, v in pairs(t) do
        local nk = k

        if type(k) == "string" then
            local n = tonumber(k)
            -- On ne convertit que si c'est un entier et que la string est "propre"
            -- (évite de convertir "03" -> 3 ou "3.0" -> 3 si tu ne veux pas)
            if n and n % 1 == 0 and tostring(n) == k then
                nk = n
            end
        end

        out[nk] = self:parseIntKeysDeep(v)
    end

    return out
end


return Converter
