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
                sampSendChat("/f [PO-II]: �������� �� ������������ � ���� �" .. nhouse)
				nhouse=nil
            end
        end
    end
end

function sampev.onServerMessage(color, text)
    if text:find ("���������� � ���� (%d+)%, ��������� ����������") then
        nhouse = text:match("���������� � ���� (%d+)%, ��������� ����������")
		sampAddChatMessage("[HOUSECHECK] ARROWUP FOR AUTOMATIC REACTION", 0xfffb67)
    end
end