sampev = require "lib.samp.events"
local toggle = true --����� false ���� ������ ����� ��� ����� ��� �������� ������

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(0) end
  sampRegisterChatCommand("ads", ads) --��� ����� �������� �������� �������, ���� ��� �� ���������
  sampAddChatMessage("AdBlock ������� � ��������� �������!", 0xA5FF00)
end

function ads() --��� ������� ����� ������� - ������� ������������� ���/����
  if toggle==true then 
  toggle=false
  sampAddChatMessage("AdBlock ��������!", 0xFF2600)
  else 
  toggle=true
  sampAddChatMessage("AdBlock �������!", 0xA5FF00)
  end
end

function sampev.onServerMessage(color, text)
if toggle==true then
    if string.find (text,'����������:',1,true) then --���� ������ ����� ��� ����������, ��� ��������� ��� SAMP-RP
	return false
    end
	if string.find (text,'�������� News',1,true) then --���� ������ ����� ��� ����������, ��� ��������� ��� SAMP-RP
	return false
    end
end
end