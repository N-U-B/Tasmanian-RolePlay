--[[
=====================================================================================================================================	
    License, Credits, Basic information, FAQ
=====================================================================================================================================	
	Based on/inspired by: 
	Blumlaut (FiveM Community) / Bluethefurry (Github)
	Original Post:	 https://forum.fivem.net/t/release-trains/28841
	Original Script: https://github.com/Bluethefurry/FiveM-Trains/releases
	
	(Re-)Created by: VenomTRP
	License: Use it as you please but do have decency and respect by crediting the original creators :)
	
	What is it?: A very extensive Train and (well mostely) Metro Addon for FiveM
	
	Basic Functionality list:
	  - Spawns a 'synced' (and working/driving) Freight train on the railroad tracks of Los Santos
	  - Spawns (1 or 2) Metro carts which can be entered as passenger by the players ("no passenger limit!")
	  - Players can WALK AROUND in the moving Metro! :)
	  - Players HAVE to buy a Metro Ticket to be able to enter (With (ATM) animated Ticket machine handling)
	  - Ticket will 'invalidate' when they have entered so they will have to buy a new one
	  - Wanted level handling (refuse passengers from entering when wanted)
	  - 'terrorist detection', which means if players shoot while on the train they will get a 4 star wanted level
	  - Easily configurable with basic variables
	  - Different Bank Messages (for Maze Bank, Bank of Liberty or Fleeca bank)
	  - Metro's, Freight Train and their drivers are 'invincible' (to prevent others 'ruining' the game/RP)
	  - Players can only EXIT the Metro at the stations (by Pressing [E] by default)
	  - Players COULD enter the Metro ANYWHERE (if they have a Ticket Of course), by making it stop (stand in front of it)
	  
	Known 'bugs' or 'issues':
	  - The Metro's DO NOT stop at the stations this is due to a limitation in the 'official game script'!
	    I CAN change this and HAD changed this, but this will increase the chance of de-syncing A LOT so I've removed it!
	  - When you enter the Metro as passenger the doors 'will dissapear', why? I don't know, but you can NOT walk through it!
		NOTE: They CAN still be used as cover though (the bottom part), which means the 'collision info' will remain active though.
	  - The ticket machines above ground (the green/old ones) DO NOT WORK, I tried for several hours to find them in the archives but
		with no luck. I however did find one that looks like it, but that one doesn't respond at all.
		I MIGHT update that when someone can tell me the model of that ticket machine object, however for now I have left it at that.
		Also because the original game-texture says: "Sorry, this machine will NEVER work", so i thought: lets keep it in lore :P (nice excuse huh? haha)
	  - When a player puts a vehicle (which doesn't automatically despawns) infront of the Metro, the Metro will wait there till the
		vehicle is removed for eternity.
	  
	Questions I've already got from our server member/crew while we where testing this script:
	  - Q: Can you make it so you can drive the Freight or Metro?
	  - A: Yes, I can.
	  
	  - Q: WILL you make it so we can drive either of them?
	  - A: Already done it, Let's test it :P
	  
	  - Q: (Player on the other side while i'm driving the train:) Woaha, why the f*ck is my train tripping so hard?
	  - A: Well mine isn't, Maybe it's because i'm driving backwards but YOUR game (engine) isn't expecting it.
	  
	  - Q: So you have now (permanently) removed the feature to drive the trains?
	  - A: Yes, I have. And I have even DELETED THE CODE, so I will NOT remake it, since it's not stable enough.
	  
	  Well that's about the 'main question' I expect to show up (since nearly everyone whom tested it did so to)
	  So my basic awnser is: NOPE I will note make it like that sorry.
	  Maybe there are others whom have managed to do it, and did made a syncing system (server sided or so), I haven't
	  and I won't, Sorry. Most of my scripts and server are client-sided with minimal network traffic (via scripting),
	  only statistics, financials and owned matterials (like houses, cars or items) are server sided to prevent cheating.
	  And since we won't need the train or metro driver missions I can't 'afford' to put to much time in developing something
	  stable and thoroughly tested while I'm not going to use it anyway ;)
	  
	Other Possible Questions:
	  - Q: Can I use this on my server?
	  - A: Sure you can that's why I've uploaded it :)
	  
	  - Q: Can you please help me add or make my money/banking system?
	  - A: No, sorry. I'm VERY busy with me job and other projects, I decided to share my code's_m_m_lsmetro_01
		   to public for others to use, possibly adapt and for others to learn from them (hence the massive commenting!).
		   I have learned it the same way years ago: Looking at other people's codes and trying what would change things or
		   make it do what I wanted it to do.
	   
	  - Q: So you're basically saying I "just need to learn" to script/program?
	  - A: YES, if you would like to run servers and games like this, and thus use mods, it's DEFINITLY a MUST if you can,
		   it might look hard in the beginning, but trust me: You will be thankful if you learn it yourself :)
		   
	  - Q: But you also stated that I can adapt your code right?
	  - A: Sure, adapt, improve, or even 'strip(remove) stuff from it' to make it suit your needs
		   NOTE: Please do not just 'destroy the code' by randomly doing stuff and then posting stuff like:
		   'I "changed" this, and now your  code doesn't work anymore'. If that happens I suggest you keep trying
		   till it DOES what you need, investigate about the Native codes, look on other sites for resources and
		   information, you can ofcourse ask questions, no problem. Just keep in mind that I'm not going to (not even
		   able to due to my schedule IF I wanted to)) script all kinds of things for everyone randomly ;) :)
	  
	  - Q: One more question though: If I can adapt your code, am I also allowed to re-upload it?
	  - A: Yes you are! :) BUT please do give credits to me and the original creator on whom's idea this
		   scripted was based and inspired on. (AKA: It's NOT allowed to reupload/publish without credits where due)
	  
	General adivce (applies to ALL uploading coders):
	If this script/addon doesn't do what you wanted it to do, if you think it's "sh*tty" etc, that's all fine, but
	just keep that to yourself and find another one that suits your needs (or even better: Make it yourself) ;)
	Keep in mind that people upload code to help/provide others in resources and learning matterial, and that doing so
	costs (extra) time. Time they took to provide you (and many others) with resources, code, samples and addons.
	Contribute, help, share and evolve together, that's the power of a community :)
	(Ofcourse doesn't mean that constructive critisim isn't welcome or desired (since we all will always have points of
	improvement :) )
	  
	=================================== Money Handling Information ===================================
	 If the rest if TL;DR, fine, your problem ;) :P (Don't nag either if you can't figure it out haha)
	 But ATLEAST do read this piece for setup! and IF you have questions, or if want to Adapt or
	 re-publish/upload it: Don't be stubborn, respect other peoples work, and DO read the above ;)
	===================================================================================================
	IMPORTANT NOTE: Bellow 'somewhere' in the code you will find these two lines:
	BankAmount = 10000    --StatGetInt("BANK_BALANCE",-1)
	PlayerCashAm = 10000  --StatGetInt("MP0_WALLET_BALANCE",-1)
	
	Make sure that you adapt them to YOUR OWN SERVER, since like stated there (in the script to),
	many servers use a different money management system, and thus it's not quite possible to make
	one that is 'general in use' for all. We use one that doesn't uses the game stats at all (since thats
	to easy to influence with cheat programs for example). To make sure that people could test/try this
	script i have set the INTERNAL SCRIPT money values to very high (those DO NOT affect the player itself though!)

	This also means that there is no money being taken from the player when he/she buy's a ticket
	
	To make sure that money is taken from the player when buying a ticked you will need to find the following code part:
		if PayWithBank == 1 then
			-- Put YOUR code to deduct the amount from the players BANK account here
			-- 'Basic Example':  PlayerBankMoney = PlayerBankMoney - TicketPrice
		else
			-- Put YOUR code to deduct the amount from the players CASH money account here
			-- 'Basic Example':  PlayerCash = PlayerCash - TicketPrice
		end
	
	And add your OWN SERVER money handling/taking code here
	
	I hope this code/addon is usefull for some people or that they might learn from it by using parts of it :)
	
	Greets,
	VenomTRP
=====================================================================================================================================	
]]

--===================================================
-- Variables used BY the script, do NOT modify them
-- unless you know what you are doing!
-- Modifying these might/will result in undesired
-- behaviour and/or script breaking!
--===================================================
IsPlayerNearMetro = false
IsPlayerInMetro = false
PlayerHasMetroTicket = false
IsPlayerUsingTicketMachine = false
ShowingExitMetroMessage = false
EverythingisK = false


--===================================================
-- These are radius locations (multiple per station)
-- to detect if the player can exit the Metro
--===================================================
local TRPMetroScanPoints = {
	{TRPStationid=0, x=230.82389831543, y=-1204.0643310547, z=38.902523040771},
	{TRPStationid=0, x=249.59216308594, y=-1204.7095947266, z=38.92488861084},
	{TRPStationid=0, x=270.33166503906, y=-1204.5366210938, z=38.902912139893},
	{TRPStationid=0, x=285.96697998047, y=-1204.2261962891, z=38.929733276367},
	{TRPStationid=0, x=304.13528442383, y=-1204.3720703125, z=38.892612457275},
	{TRPStationid=1, x=-294.53421020508, y=-353.38571166992, z=10.063089370728},
	{TRPStationid=1, x=-294.96997070313, y=-335.69766235352, z=10.06309223175},
	{TRPStationid=1, x=-294.66772460938, y=-318.29565429688, z=10.063152313232},
	{TRPStationid=1, x=-294.73403930664, y=-303.77200317383, z=10.063160896301},
	{TRPStationid=1, x=-294.84133911133, y=-296.04568481445, z=10.063159942627},
	{TRPStationid=2, x=-795.28063964844, y=-126.3436050415, z=19.950298309326},
	{TRPStationid=2, x=-811.87170410156, y=-136.16409301758, z=19.950319290161},
	{TRPStationid=2, x=-819.25689697266, y=-140.25764465332, z=19.95037651062},
	{TRPStationid=2, x=-826.06652832031, y=-143.90898132324, z=19.95037651062},
	{TRPStationid=2, x=-839.2587890625, y=-151.32421875, z=19.950378417969},
	{TRPStationid=2, x=-844.77874755859, y=-154.31440734863, z=19.950380325317},
	{TRPStationid=3, x=-1366.642578125, y=-440.04803466797, z=15.045327186584},
	{TRPStationid=3, x=-1361.4998779297, y=-446.50497436523, z=15.045324325562},
	{TRPStationid=3, x=-1357.4061279297, y=-453.40963745117, z=15.045320510864},
	{TRPStationid=3, x=-1353.4593505859, y=-461.88238525391, z=15.045323371887},
	{TRPStationid=3, x=-1346.1264648438, y=-474.15142822266, z=15.045383453369},
	{TRPStationid=3, x=-1338.1717529297, y=-488.97756958008, z=15.045383453369},
	{TRPStationid=3, x=-1335.0261230469, y=-493.50796508789, z=15.045380592346},
	{TRPStationid=4, x=-530.67529296875, y=-673.33935546875, z=11.808959960938},
	{TRPStationid=4, x=-517.35559082031, y=-672.76635742188, z=11.808965682983},
	{TRPStationid=4, x=-499.44836425781, y=-673.37664794922, z=11.808973312378},
	{TRPStationid=4, x=-483.1321105957, y=-672.68438720703, z=11.809024810791},
	{TRPStationid=4, x=-468.05545043945, y=-672.74371337891, z=11.80902671814},
	{TRPStationid=5, x=-206.90379333496, y=-1014.9454345703, z=30.138082504272},
	{TRPStationid=5, x=-212.65534973145, y=-1031.6101074219, z=30.208702087402},
	{TRPStationid=5, x=-212.65534973145, y=-1031.6101074219, z=30.208702087402},
	{TRPStationid=5, x=-217.0216217041, y=-1042.4768066406, z=30.573789596558},
	{TRPStationid=5, x=-221.29409790039, y=-1054.5914306641, z=30.13950920105},
	{TRPStationid=6, x=101.89681243896, y=-1714.7589111328, z=30.112174987793},
	{TRPStationid=6, x=113.05246734619, y=-1724.7247314453, z=30.111650466919},
	{TRPStationid=6, x=122.72943878174, y=-1731.7276611328, z=30.54141998291},
	{TRPStationid=6, x=132.55198669434, y=-1739.7276611328, z=30.109527587891},
	{TRPStationid=7, x=-532.24133300781, y=-1263.6896972656, z=26.901586532593},
	{TRPStationid=7, x=-539.62115478516, y=-1280.5207519531, z=26.908163070679},
	{TRPStationid=7, x=-545.18548583984, y=-1290.9525146484, z=26.901586532593},
	{TRPStationid=7, x=-549.92230224609, y=-1302.8682861328, z=26.901605606079},
	{TRPStationid=8, x=-872.75714111328, y=-2289.3198242188, z=-11.732793807983},
	{TRPStationid=8, x=-875.53247070313, y=-2297.67578125, z=-11.732793807983},
	{TRPStationid=8, x=-880.05035400391, y=-2309.1235351563, z=-11.732788085938},
	{TRPStationid=8, x=-883.25482177734, y=-2321.3303222656, z=-11.732738494873},
	{TRPStationid=8, x=-890.087890625, y=-2336.2553710938, z=-11.732738494873},
	{TRPStationid=8, x=-894.92395019531, y=-2350.4128417969, z=-11.732727050781},
	{TRPStationid=9, x=-1062.7882080078, y=-2690.7492675781, z=-7.4116077423096},
	{TRPStationid=9, x=-1071.6839599609, y=-2701.8503417969, z=-7.410071849823},
	{TRPStationid=9, x=-1079.0869140625, y=-2710.7033691406, z=-7.4100732803345},
	{TRPStationid=9, x=-1086.8758544922, y=-2720.0673828125, z=-7.4101362228394},
	{TRPStationid=9, x=-1095.3796386719, y=-2729.8442382813, z=-7.4101347923279},
	{TRPStationid=9, x=-1103.7401123047, y=-2740.369140625, z=-7.4101300239563}
}

-- These are the 'exit points' to where the player is teleported with the short fade-out / fade-in
-- NOTE: TRPStationid is NOT used in this table, it's just here for user refrence!
 local TRPMetroEXITPoints = {
	{TRPStationid=0, x=294.46011352539, y=-1203.5991210938, z=38.902496337891, h=90.168075561523},
	{TRPStationid=1, x=-294.76913452148, y=-303.44619750977, z=10.063159942627, h=185.19216918945},
	{TRPStationid=2, x=-839.20843505859, y=-151.43312072754, z=19.950380325317, h=298.70877075195},
	{TRPStationid=3, x=-1337.9787597656, y=-488.36145019531, z=15.045375823975, h=28.487064361572},
	{TRPStationid=4, x=-474.07037353516, y=-673.10729980469, z=11.809032440186, h=81.799621582031},
	{TRPStationid=5, x=-222.13038635254, y=-1054.5043945313, z=30.139930725098, h=155.81954956055},
	{TRPStationid=6, x=133.13328552246, y=-1739.5617675781, z=30.109495162964, h=231.40335083008},
	{TRPStationid=7, x=-550.79998779297, y=-1302.4467773438, z=26.901605606079, h=155.53070068359},
	{TRPStationid=8, x=-891.87664794922, y=-2342.6486816406, z=-11.732737541199, h=353.59387207031},
	{TRPStationid=9, x=-1099.6376953125, y=-2734.8957519531, z=-7.410129070282, h=314.91424560547}
}


local TicketMachines = {'prop_train_ticket_02', 'prop_train_ticket_02_tu', 'v_serv_tu_statio3_'}
local anim = "mini@atmenter"

Citizen.CreateThread(function()
	function LoadTrainModels() -- f*ck your rails, too!
		tempmodel = GetHashKey("freight")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightcar")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightgrain")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightcont1")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightcont2")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freighttrailer")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end

		tempmodel = GetHashKey("tankercar")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("metrotrain")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("s_m_m_lsmetro_01")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		if Debug then 
			if Debug then print("TRP Log: Train Models Loaded" ) end
		end
	end

	LoadTrainModels()

	RegisterNetEvent("StartTrain")
	function StartTrain()
		--Citizen.Trace("a train has arrived") -- whee i must be host, lucky me
		randomSpawn = math.random(#TrainLocations)
		x,y,z = TrainLocations[randomSpawn][1], TrainLocations[randomSpawn][2], TrainLocations[randomSpawn][3] -- get some random locations for our spawn
	
	
		-- For those whom are interested: The yesorno variable determines the direction of the train ;)
		yesorno = math.random(0,100)
		if yesorno >= 50 then -- untested, but seems to work /shrug
			yesorno = true
		elseif yesorno < 50 then
			yesorno = false
		end
		
		--====================================================================================
		-- Note: This (DeleteAllTrains()) might work when you join a session or so which
		-- has 'roque trains' (aka with no host or where the host just left while you joined)
		-- but I (VenomTRP) have noticed that it has no effect at all when the script is
		-- restarted and clients stay in the session, however it will not spawn any new ones
		-- either since it doesn't detect a player connecting.
		-- I suspect that it doesn't remove/delete the trains since the game would still see
		-- them as Mission Trains which would require the native deleteMissionTrain.
		-- Although it is impossible to call this native since after a restart of this script
		-- we no longer have a refrence to call them.
		-- I will leave the call here as intended by the original developer, but I SUSPECT
		-- that it would not have much use (but can't confirm it with 100% certainty though)
		--====================================================================================
		DeleteAllTrains()
		Wait(100)
		Train = CreateMissionTrain(math.random(0,22), x,y,z,yesorno)
		if Debug then print("TRP Log: Train 1 created (Freight)." ) end
		while not DoesEntityExist(Train) do
			Wait(800)
			if Debug then print("TRP Log: Waiting for Freight to be created" ) end
		end
		Wait(200) -- Added a small 'waiting' while the train is loaded (to prevent the)
				  -- random unexplained spawning of the freight train on the Metro Rails
		
		MetroTrain = CreateMissionTrain(24,40.2,-1201.3,31.0,true) -- these ones have pre-defined spawns since they are a pain to set up
		if Debug then print("TRP Log: Train 2 created (Metro)." ) end
		while not DoesEntityExist(MetroTrain) do
			Wait(800)
			if Debug then print("TRP Log: Waiting for Metro Train 1 to be created" ) end -- Also wait until the train entity has actually been created
		end
		Wait(200) -- Added a small 'waiting' while the train is loaded (to prevent the)
				  -- random unexplained spawning of the freight train on the Metro Rails
		
		if UseTwoMetros == 1 then
			MetroTrain2 = CreateMissionTrain(24,-618.0,-1476.8,16.2,true)
			if Debug then print("TRP Log: Train 3 created (Metro #2)." ) end
			while not DoesEntityExist(MetroTrain2) do
				Wait(800)
				if Debug then  print("TRP Log: Waiting for Metro Train 2 to be created" ) end -- Also wait until the train entity has actually been created
			end
		end
		Wait(200) -- Added a small 'waiting' while the train is loaded (to prevent the)
				  -- random unexplained spawning of the freight train on the Metro Rails

		TrainDriverHash = GetHashKey("s_m_m_lsmetro_01")

		-- By making a refrence to the drivers we can call them further on to make them invincible for example.
		Driver1 = CreatePedInsideVehicle(Train, 26, TrainDriverHash, -1, 1, true)
		Driver2 = CreatePedInsideVehicle(MetroTrain, 26, TrainDriverHash, -1, 1, true)

		if UseTwoMetros == 1 then
			Driver3 = CreatePedInsideVehicle(MetroTrain2, 26, TrainDriverHash, -1, 1, true) -- create peds for the trains
		end
		
		--=========================================================
		-- TRP 'Addition': This SHOULD prevent the train driver(s)
		-- from getting shot or fleeing out of the train/tram when
		-- being targeted by the player.
		-- We have had several instances where the tram driver just
		-- teleported out of the tram to attack the player when it
		-- it was targeted (even without holding a weapon).
		-- I suspect that this behaviour is default in the game
		-- unless you override it.
		--=========================================================
		SetBlockingOfNonTemporaryEvents(driver1, true)
		SetPedFleeAttributes(driver1, 0, 0)
		SetEntityInvincible(driver1, true)
		SetEntityAsMissionEntity(Driver1, true)


		SetBlockingOfNonTemporaryEvents(Driver3, true)
		SetPedFleeAttributes(Driver3, 0, 0)
		SetEntityInvincible(Driver3, true)
		SetEntityAsMissionEntity(Driver3, true)
	
		SetEntityAsMissionEntity(Train,true,true) -- dunno if this does anything, just throwing it in for good measure
		SetEntityAsMissionEntity(MetroTrain,true,true)

		SetEntityInvincible(Train, true)
		SetEntityInvincible(MetroTrain, true)

		if UseTwoMetros == 1 then
			SetBlockingOfNonTemporaryEvents(Driver2, true)
			SetPedFleeAttributes(Driver2, 0, 0)
			SetEntityInvincible(Driver2, true)
			SetEntityAsMissionEntity(Driver2, true)
			SetEntityAsMissionEntity(MetroTrain2,true,true)
			SetEntityInvincible(MetroTrain2, true)
		end
		
		-- Cleanup from memory
		SetModelAsNoLongerNeeded(TrainDriverHash)

		if Debug then print("TRP Log: Train System Started, you are currently 'host' for the trains." ) end
	end

	AddEventHandler("StartTrain", StartTrain)
	EverythingisK = true -- Added this because the Event isn't fully registered when the Event PlayerSpawned trigger.
end)


function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, PlayerPedId(), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end


--==============================================
-- Simple yet effective function to check if
-- player is female or male (sine we only use
-- mp_f_freemode_01 and mp_m_freemode_01 on our
-- server) We need(ed) this function because for
-- some weird reason IsPedMale had some issues
-- with some scripts.
--==============================================
function TRPIsPedFemale(ped)
	if IsPedModel(ped, 'mp_f_freemode_01') then
		return true
	else
		return false
	end
end

function TRPCanPlayerExitTrain()
	playerPed = PlayerPedId()
	for _, item in pairs(TRPMetroScanPoints) do
		Px,Py,Pz = table.unpack(GetEntityCoords(playerPed, true))
		if GetDistanceBetweenCoords(Px,Py,Pz, item.x, item.y, item.z, true) < StationsExitScanRadius then
			return true -- The function DID detected the player within one of the radius markers at the stations
		end
	end
	return false -- The function did NOT detected the player within one of the radius markers at the stations
end

function TRPTeleportPlayerToNearestMetroExit()
	playerPed = PlayerPedId()
	for _, item in pairs(TRPMetroScanPoints) do
		Px,Py,Pz = table.unpack(GetEntityCoords(playerPed, true))
		if GetDistanceBetweenCoords(Px,Py,Pz, item.x, item.y, item.z, true) < StationsExitScanRadius then
			for _, item2 in pairs(TRPMetroEXITPoints) do
				if item.TRPStationid == item2.TRPStationid  then
					DoScreenFadeOut(800)
					while not IsScreenFadedOut() do
						Wait(10)
					end
					TRPNewX = item2.x -- The 'new' Player X position
					TRPNewY = item2.y -- The 'new' Player Y position
					TRPNewZ = item2.z -- The 'new' Player Z position
					TRPNewH = item2.h -- The 'new' Player Heading Direction
		
					SetEntityCoordsNoOffset(PlayerPedId(), TRPNewX, TRPNewY, TRPNewZ)
					SetEntityHeading(PlayerPedId(), TRPNewH)
		
					DoScreenFadeIn(800)
					while not IsScreenFadedIn() do
						Wait(10)
					end
					return true 
				end
			end
		end
	end
	return false -- The function did NOT detected the player within one of the radius markers at the stations
end


-- Added for OneSync

Citizen.CreateThread(function() -- Suggest by Daniel_Martin, making train work like GTA:O
  SwitchTrainTrack(0, true)
  SwitchTrainTrack(3, true)
  N_0x21973bbf8d17edfa(0, 120000)
  SetRandomTrains(1)
end)

local firstspawn = 0 -- By default, Its the first spawn of the player. So, I don't recommend to restart the script with already player in the server.

AddEventHandler('playerSpawned', function()
	while EverythingisK == false do Citizen.Wait(0) end -- The Event "StartTrain" is fully registered. We can continue now.
	if firstspawn == 0 then -- First spawn of the player ? Check if they are already trains
		TriggerServerEvent('TRP-Trains:PlayerSpawned')
		firstspawn = 1 -- Just for making not trigger the event if he respawn after die.
	end
end)