local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('cash', 'Check Cash Balance', {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData and Player.PlayerData.money then
        local cashamount = Player.PlayerData.money.cash
        TriggerClientEvent('hud:client:ShowAccounts', source, 'cash', cashamount)
    end
end, 'user')

QBCore.Commands.Add('bank', 'Check Bank Balance', {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData and Player.PlayerData.money then
        local bankamount = Player.PlayerData.money.bank
        TriggerClientEvent('hud:client:ShowAccounts', source, 'bank', bankamount)
    end
end, 'user')