local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData() or {}
local cashAmount = 0
local bankAmount = 0


RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    Wait(2000)  -- Allow extra time for the data to be populated
    PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData and PlayerData.money then
        cashAmount = PlayerData.money.cash
        bankAmount = PlayerData.money.bank
        TriggerEvent('hud:client:ShowAccounts', 'cash', cashAmount)
        TriggerEvent('hud:client:ShowAccounts', 'bank', bankAmount)
    end
end)

RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    PlayerData = {}
end)

RegisterNetEvent("QBCore:Player:SetPlayerData", function(val)
    PlayerData = val
end)

RegisterNetEvent('hud:client:ShowAccounts', function(accountType, amount)
    if accountType == 'cash' then
        SendNUIMessage({
            action = 'show',
            type = 'cash',
            cash = amount
        })
    else
        SendNUIMessage({
            action = 'show',
            type = 'bank',
            bank = amount
        })
    end
end)

RegisterNetEvent('hud:client:OnMoneyChange', function(accountType, amount, isMinus)
    if PlayerData and PlayerData.money then
        cashAmount = PlayerData.money.cash
        bankAmount = PlayerData.money.bank
        SendNUIMessage({
            action = 'updatemoney',
            cash = cashAmount,
            bank = bankAmount,
            amount = amount,
            minus = isMinus,
            type = accountType
        })
    end
end)
