require "lib.moonloader"
sampev = require "lib.samp.events"

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(0) end
sampAddChatMessage("[AUTOMDC] WORKING!", 0xffba74)
    while true do
        wait(0)
        if mdc ~= nil then
            if not sampIsChatInputActive() then
				wait(800)
                sampSendChat("/mdc " .. mdc)
				wait(2000)
				nick = sampGetPlayerNickname(mdc)
				if pri == " ����������" then
				sampSendChat("/f [PO-II]: ���: " .. nick .. ". ������� �������: " .. zv)
				else
				sampSendChat("/f [PO-II]: ���: " .. nick .. ". ������� �������: " .. zv .. ". �������:" .. pri)
				end
				mdc=nil
            end
        end
    end
end

function sampev.onServerMessage(color, text)
	if string.find(text,"10-56",1,true) then
		_,i = string.find(text,"10-56",1,true)
		i=i+1
		mdc = string.match(text, "%d+",i)
		sampAddChatMessage("[AUTOMDC] processing id " .. mdc, 0xffba74)
	end
	
	if string.find(text,"������� �������:",1,true) then
		zv = string.match(text, "%d+")
	end
	
	if string.find(text,"�������:",1,true) then
		pri = string.gsub(text, "�������: ","")
	end
end
