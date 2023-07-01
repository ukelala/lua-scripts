sampev = require "lib.samp.events"
local toggle = true --Ставь false если хочешь чтобы при ыходе был выключен адблок

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(0) end
  sampRegisterChatCommand("ads", ads) --тут можно поменять название команды, если эта не нравиться
  sampAddChatMessage("AdBlock запущен и автоматом включён!", 0xA5FF00)
end

function ads() --тут функция самой команды - обычный переключатель вкл/выкл
  if toggle==true then 
  toggle=false
  sampAddChatMessage("AdBlock выключен!", 0xFF2600)
  else 
  toggle=true
  sampAddChatMessage("AdBlock включён!", 0xA5FF00)
  end
end

function sampev.onServerMessage(color, text)
if toggle==true then
    if string.find (text,'Объявление:',1,true) then --Сюда писать текст для блокировки, тут настроено для SAMP-RP
	return false
    end
	if string.find (text,'Редакция News',1,true) then --Сюда писать текст для блокировки, тут настроено для SAMP-RP
	return false
    end
end
end