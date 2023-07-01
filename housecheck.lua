sampev = require "lib.samp.events"

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(0) end
sampAddChatMessage("[HOUSECHECK] WORKING!", 0xfffb67)
    while true do
        wait(0)
        if nhouse ~= nil then
            if not sampIsChatInputActive() and wasKeyPressed(38) then
                sampSendChat("/gpshouse " .. nhouse)
				wait(600)
                sampSendChat("/f [PO-II]: Реагирую на сигнализацию в доме №" .. nhouse)
				nhouse=nil
            end
        end
    end
end

function sampev.onServerMessage(color, text)
    if text:find ("Ограбление в доме (%d+)%, проверьте обстановку") then
        nhouse = text:match("Ограбление в доме (%d+)%, проверьте обстановку")
		sampAddChatMessage("[HOUSECHECK] ARROWUP FOR AUTOMATIC REACTION", 0xfffb67)
    end
end