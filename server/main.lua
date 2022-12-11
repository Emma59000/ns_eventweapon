local webhook = "https://discordapp.com/api/webhooks/725711508990066788/lta4-1s5IoBPnLVJtJesCkpeSIXwGeq0WEK6UvqEA0KZnaMpSVfqbzRkV8NX56n2-uR7"

ESX = nil

TriggerEvent('esx:getSh4587poiaredObj4587poiect', function(obj) ESX = obj end)

RegisterServerEvent('ns_eventweapon:giveweapon')
AddEventHandler('ns_eventweapon:giveweapon', function(theWeapon)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local date_local = os.date('%H:%M:%S', os.time())
	if date_local >= '21:00:00' and date_local <= '23:59:59' then
        xPlayer.addWeapon(theWeapon, 250)
        TriggerClientEvent('esx:showAdvancedNotification',xPlayer.source,"Armurier ", "~r~ INFO !", "~w~Vous avez pris une ~h~arme" , "CHAR_AMMUNATION", 24,5)
        sendWebhook(theWeapon, GetPlayerName(xPlayer.source), xPlayer.source)
    else
        TriggerClientEvent('esx:showAdvancedNotification',xPlayer.source,"Armurier ", "~r~ INFO !", "~w~L'armurier n'est pas ouvert !" , "CHAR_AMMUNATION", 24,5)
    end
end)


RegisterNetEvent("ns_eventweapon:giveitem")
AddEventHandler("ns_eventweapon:giveitem", function(item, limit, countItem)
    local xPlayer = ESX.GetPlayerFromId(source)
    local quantity = xPlayer.getInventoryItem(item).count
    local date_local = os.date('%H:%M:%S', os.time())
	if date_local >= '21:00:00' and date_local <= '23:59:59' then
        if quantity < limit and countItem > 0 and (quantity + countItem) < limit then
            xPlayer.addInventoryItem(item, countItem)
            TriggerClientEvent('esx:showAdvancedNotification',xPlayer.source,"Armurier ", "~r~ INFO !", "~w~Vous avez pris une ~h~arme" , "CHAR_AMMUNATION", 24,5)
            sendWebhook(item, GetPlayerName(xPlayer.source), xPlayer.source)
        else
            TriggerClientEvent('esx:showNotification', source, "Tu portes trop de chose...")
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification',xPlayer.source,"Armurier ", "~r~ INFO !", "~w~L'armurier n'est pas ouvert !" , "CHAR_AMMUNATION", 24,5)
    end
end)

function sendWebhook(weapon, joueur, _source)
	local msg = "Le joueur [".._source.."] - "..joueur.." a pris l'arme [ **"..weapon.."** ] dans le menu d'évènement."

	local discordInfo = {
        ["color"] = "15158332",
        ["type"] = "rich",
        ["title"] = "Log give event",
        ["description"] = msg,
        ["footer"] = {
        ["text"] = 'NewStart - LOG'
        }
    }

	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = 'NewStart - LOG', embeds = { discordInfo } }), { ['Content-Type'] = 'application/json' })
end