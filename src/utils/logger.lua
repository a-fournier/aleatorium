-- Utilitaire de logging : convertit les types du callback en strings et imprime.
Logger = {}

-- Convertit un Vector en "x=..., y=..."
local function vectorToString(v)
    if v == nil then return "nil" end
    return string.format("x=%.2f, y=%.2f", v.X or 0, v.Y or 0)
end

-- Convertit un Entity (spawner) en "type=..., variant=..., subtype=..., ptr=0x...".
-- Si nil, retourne "nil".
local function entityToString(e)
    if e == nil then return "nil" end
    -- Certains getters sont sûrs pour identifier l'entité
    local t = e.Type or -1
    local v = e.Variant or -1
    local s = e.SubType or -1
    -- Adresse (indicatif) : tostring(e) renvoie souvent "userdata: 0x...."
    local ptr = tostring(e)
    return string.format("type=%d, variant=%d, subtype=%d, ref=%s", t, v, s, ptr)
end

-- Conversion générique simple
local function anyToString(x)
    local typ = type(x)
    if typ == "nil" then return "nil"
    elseif typ == "number" then return tostring(x)
    elseif typ == "string" then return x
    elseif typ == "boolean" then return tostring(x)
    elseif typ == "table" then return ("table@" .. tostring(x))
    elseif typ == "userdata" then return tostring(x) -- fallback
    else return (typ .. "@" .. tostring(x))
    end
end

function Logger.logValue(x)
    local msg = string.format("[LogValue] %s", anyToString(x))
    Isaac.ConsoleOutput(msg .. "\n")
    Isaac.DebugString(msg)
end

return Logger
