Citizen.CreateThread(function()
    while true do
        Wait(Config.deleteTimer * 60000)
        TriggerClientEvent('chat:addMessage', -1,
            { color = { 255, 0, 0 }, args = { 'Warning', 'Veículos Sem Condutor irão ser apagados em 1 Minuto' } })
        Wait(60000)
        TriggerClientEvent('chat:addMessage', -1,
            { color = { 255, 0, 0 }, args = { 'Warning', 'Veículos Sem Condutor irão ser apagados em 15 Segundos' } })
        Wait(15000)
        TriggerClientEvent('chat:addMessage', -1,
            { color = { 255, 0, 0 }, args = { 'Warning', 'Veículos Sem Condutor irão ser apagados em 5 Segundos' } })
        Wait(5000)

        for i, vehicle in pairs(GetAllVehicles()) do
            if HasVehicleBeenOwnedByPlayer(vehicle) then
                if not vehicleOccuped(vehicle) then
                    DeleteEntity(vehicle)
                end
            end
        end
        TriggerClientEvent('chat:addMessage', -1,
            { color = { 255, 0, 0 }, args = { 'Warning', 'Todos os Veículos sem Condutor foram Apagados.' } })
    end
end)



function vehicleOccuped(vehicle)
    for seat = -1, 6 do
        if GetPedInVehicleSeat(vehicle, seat) ~= 0 then
            return true
        end
    end
    return false
end
