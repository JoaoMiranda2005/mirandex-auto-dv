RegisterCommand(Config.commandName, function(source, args, rawCommand)
    Citizen.Wait(5000)
    TriggerClientEvent("mirandex:delallveh", -1)
end, Config.restrictCommand)
