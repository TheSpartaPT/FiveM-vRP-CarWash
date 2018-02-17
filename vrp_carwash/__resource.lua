resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'vRP CarWash by TheSpartaPT.'

client_scripts {
	"@vrp/client/Proxy.lua",
	"vrp_carwash_client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"vrp_carwash_server.lua"
}
