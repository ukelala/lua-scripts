sampev = require "lib.samp.events"

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(0) end
end

function sampev.onSendChat(text)
 i=string.find(text, "-")
		if i==1 then 
		s = string.gsub(text, "-", "/")
		sampProcessChatInput(s)
		return false
		end
end