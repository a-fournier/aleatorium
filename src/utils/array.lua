local Array = {}

function Array.includes(array, value)
    for _, v in pairs(array) do
        if v == value then
            return true
        end
    end
    return false
end

return Array
