ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterCommand('delallveh', function(xPlayer)
    local xPlayer = ESX.GetPlayerFromId(source)
    if source.getGroup() == 'admin' then
        TriggerClientEvent("mirandex:delallveh", -1)
    else
        local msg = 'Não tens permissões para executar este comando!'
        local type = error
        local time = 5000
        ESX.ShowNotification(msg, time, type)
end)