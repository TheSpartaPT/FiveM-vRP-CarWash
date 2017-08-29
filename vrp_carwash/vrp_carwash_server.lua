--Settings--

enableprice = true -- true = carwash is paid, false = carwash is free

price = 100 -- you may edit this to your liking. if "enableprice = false" ignore this one

--DO-NOT-EDIT-BELLOW-THIS-LINE--

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

vRPclient = Tunnel.getInterface("vRP", "vrp_carwash")

RegisterServerEvent('vrp_carwash:checkmoney')
AddEventHandler('vrp_carwash:checkmoney', function ()
	user = vRP.getUserId({source})
	_source = vRP.getUserSource({user})
	if enableprice == true then
		userMoney = vRP.getMoney({user})
		if vRP.tryPayment({user, price}) then
			TriggerClientEvent('vrp_carwash:success', _source, price)
		else
			moneyleft = price - userMoney
			TriggerClientEvent('vrp_carwash:notenoughmoney', _source, moneyleft)
		end
	else
		TriggerClientEvent('vrp_carwash:free', _source)
	end
end)
