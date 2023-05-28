local QBCore = exports['qb-core']:GetCoreObject()

-- Callback

-- @NOTE This must be improved to support variable price type
QBCore.Functions.CreateCallback('qb-customs:server:install', function(source, cb, shop, data)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    for i = 1, #Config.ALLOWED_MONEY_TYPES do
        local currentPaymentMethod = Config.ALLOWED_MONEY_TYPES[i]
        local priceType = Config.Pricing.type

        if (priceType == 'fixed') then
            local price = Config.Pricing[priceType][data.upgradeType][tostring(data.upgradeIndex)]
            local playerMoney = player.Functions.GetMoney(currentPaymentMethod)
    
            if (playerMoney >= price) then
                player.Functions.RemoveMoney(currentPaymentMethod, price, string.format('You paid for an upgrade: %s, stage %s', data.upgradeType, data.upgradeIndex + 1))
    
                cb(true)
    
                break
            end
        end
    end
end)
