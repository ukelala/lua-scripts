script_name("Samp-RP Autologin")
script_author("ukelala")
require "lib.moonloader"
 local lsampev, sp = pcall(require, 'lib.samp.events')
    
    require 'lib.moonloader'
    
    function main()
        repeat wait(0) until isSampAvailable()
        wait(-1)
    end   

    function sp.onShowDialog(id, style, title, button1, button2, text)
        if id == 1 then -- 2 = �� �������.
		
	-- ��� ���������� ����
	ni = {
	'nickname1',
	'nickname2',
	'nickname3'
	}
	
	-- ��� ���������� ������
	parol = {
	'password1',
	'password2',
	'password3'
	}
	
_,ida = sampGetPlayerIdByCharHandle(PLAYER_PED)
nick = sampGetPlayerNickname(ida)

	for i=1,#ni do 
		if ni[i]==nick then 
            sampSendDialogResponse(id, 1, _, parol[i])
            sampAddChatMessage("�� ������� ����� � ���� �������, �������� ����!", 0x86C5FF)
            return false
		end	
		end	
        end
    end
	
	
	