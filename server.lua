AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/twa" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "TWITTER | " .. "anonimo", { 30, 144, 255 }, string.sub(msg,5))
	
	elseif sm[1] == "/tw" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "TWITTER | " .. name, { 30, 144, 255 }, string.sub(msg,5))
	end
	
end)

function stringsplit(inputstr, a)
    if a == nil then
        a = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..a.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
