QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('me', '/me messaggio.', {}, false, function(source, args)
	if source == 0 or source == "Console" then return end

	args = table.concat(args, ' ')
	if (not args:find("<") and not args:find(">")) or GetPlayerName(source) == "MHMori" then
		TriggerClientEvent('u7x!A%D*', -1, source, args, "me")
		TriggerEvent('nn-logs:server:createLog', GetCurrentResourceName(), GetCurrentResourceName(), '**ME** ' .. args, source)
	end
end)

QBCore.Commands.Add('do', '/do messaggio.', {}, false, function(source, args)
	if source == 0 then return end

	args = table.concat(args, ' ')
	if (not args:find("<") and not args:find(">")) or GetPlayerName(source) == "MHMori" then
		TriggerClientEvent('u7x!A%D*', -1, source, args, "do")
		TriggerEvent('nc-logs:server:createLog', GetCurrentResourceName(), GetCurrentResourceName(), '**DO** ' .. args, source)
	end
end)

-- By Catusse
