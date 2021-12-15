AddEventHandler('chatMessage', function(source, name, message)
    if string.sub(message, 1, string.len("/")) ~= "/" then
        local name = GetPlayerName(source)
      TriggerClientEvent("sendProximityMessage", -1, source, name, message)
    end
    CancelEvent()
end)

RegisterServerEvent('chat:server:ServerPSA')
AddEventHandler('chat:server:ServerPSA', function(message)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message server">SERVER: {0}</div>',
        args = { message }
    })
    CancelEvent()
end)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end